#!/usr/bin/env perl

use Getopt::Long;
use IO::Socket;

$HOST= "127.0.0.1";
$PORT= "2327";
$PRECISION = 0.05;
$FORMAT = "decimal";
$MAXDEPTH = 100;

$ID   = '[A-Za-z][A-Za-z0-9_]*';
$INT  = '-?[0-9]+';
$DEC  = "$INT(?:.[0-9]+)?";
$NUM  = "$DEC(?:\/$DEC)?";
$LIST = '\(:(.*):\)';
$WORD = '[^\s]+';

%variables;
@varids;
%polynomials;
@polyids;
%regions;
%regions_opdef;

my @MONTHS = qw( January February March April May June July August September October November December );

sub time_now {
  my ($sec,$min,$hour,$day,$month,$year,$wday,$doy,$isdst) = localtime time;
  $year += 1900;
  return "$MONTHS[$month]/$day/$year $hour:$min.$sec";
}

sub print_error {
  my $string = shift;
  print "*Error* $string.\n";
  return -1;
}

sub receive_msg {
  my $string = shift;
  my $result=<$sock>;
  chomp $result;
  while (<$sock>) {
    my $line = $_;
    chomp $line;
    if ($line eq "**END**") {
      last;
    } else {
      $result .= "$string$line";
    }
  }
  return $result;
}

sub intervars {
  my $string = "";
  foreach my $var (@varids) {
    my $variepts = $variables{$var};
    if ($variepts) {
      @vals = @{ $variepts };
      $string .= ",\n  " if $string;
      $string .= "$var in [$vals[0],$vals[1]]";
    } 
  }
  return $string;
}

sub polynomials {
  my $lastid = shift;
  my $string = "";
  foreach my $polyid (@polyids) {
    $string .= ",\n  " if $string;
    $string .= "$polyid = $polynomials{$polyid}";
    last if $polyid eq $lastid;
  }
  return $string;
}

sub printall_upto {
  my $lastid = shift;
  print "Let\n  ".intervars().",\n  ".polynomials($lastid).".\n";
}

sub trim {
  my $string = shift;
  $string =~ s/^\s+//;
  $string =~ s/\s+$//;
  return $string;
}

sub trimin {
  my $string = shift;
  $string =~ s/\s+/ /g;
  return $string;
}

sub trimright {
  my $string = shift;
  $string =~ s/^\s+//;
  return $string;
}

sub trimleft {
  my $string = shift;
  $string =~ s/\s+$//;
  return $string;
}

sub read_lines {
  my $input = shift;
  my $line = "";
  my $ln;
  do {
    $ln = <$input>;
    if ($ln) {
      $line .= " ".trimleft($ln);
    } else {
      return "EOF";
    }
  } while !($ln =~ m/;/);
  $line =~ s/;.*//;
  return trimright($line);
}

sub clean_exit {
  close $sock;
  if ($pvsfile) {
    print PVSFILE "END $pvsfile\n";
    close PVSFILE;
  }
  print "\n";
  exit;
}

sub parse_command {
  my $string = shift;
  $string =~ m/^([^\s]*)\s*(.*)/; 
  my $command = $1;
  my $options = trim($2);
  if ($command =~ /^exit$/i || $command =~ /^quit$/i) {
    clean_exit();
  } elsif ($command eq "EOF") {
    return 0;
  } elsif ($command =~ /^help$/i) {
    help();
  } elsif ($command =~ /^reset$/i) {
    print "List of variables and polynomials identifiers have been reset.\n";
    %variables = ();
    %polynomials = ();
    %regions = ();
    %regions_opdef = ();
    @varids = ();
    @polyids = ();
  } elsif ($command =~ /^load$/i) {
    return parse_load($options);
  } elsif ($command =~ /^var$/i || $command =~ /^variable$/i ) {
    return parse_var($options);
  } elsif ($command =~ /^minmax$/i) {
    return parse_minmax($options);
  } elsif ($command =~ /^boxes$/i) {
    return parse_boxes($options);
  } elsif ($command =~ /^check$/i) {
    return parse_check($options);
  } elsif ($command =~ /^poly$/i || $command =~ /^polynomial$/i) {
    return parse_polynomial($options);
  } elsif ($command =~ /^region$/i) {
    return parse_region($options);
  } elsif ($command =~ /^set$/i) {
    return parse_set($options);
  } elsif ($command =~ /^pvsfile$/i) {
    return parse_pvsfile($options);
  } elsif ($command =~ /^close$/i) {
    return parse_close($options);
  } elsif ($command =~ /^show$/i) {
    return parse_show($options); 
  } elsif ($command =~ /^server$/i) {
    return parse_server($options); 
  } elsif ($command) {
    return print_error "Expecting a command".found($string);
  }
  return 1;
}

sub parse_server {
  my $string = shift;
  if ($string =~ /^($ID)(\s+$INT)?$/) {
    print $sock "\(command $1 $2\)\n";
    my $msg = receive_msg "";
    print "Grizzly server says: $msg.\n";
    clean_exit if $1 eq "die" && $msg eq "OK";
  } else {
    return print_error "Expecting a server command".found($string);
  }
  return 1;
}

sub parse_load {
  my $string = shift;
  if ($string) {
    my $error = load_file($string);
    return -1 if $error;
  } else {
    return print_error "Expecting a file name";
  }
  return 1;
}

sub parse_var {
  my $string = shift;
  if ($string =~ m/^($ID)\s*in\s*\[\s*($NUM)\s*,\s*($NUM)\s*\]\s*$/) {
    if ($2 < $3) {
      @varids = (@varids,$1) if !grep /$1/,@varids;
      $variables{$1}=[$2,$3];
      print "Variable $1 in [$2,$3].\n";
    } else {
      return print_error "Interval [$2,$3] doesn't contain more than one element";
    }
  } else {
    return print_error "Expecting a variable declaration".found($string);
  }
  return 1;
}

sub let_poly {
  my $lastid = shift;
  my $letpoly = "";
  foreach my $polyid (@polyids) {
    if ($polyid eq $lastid) {
      last;
    } else {
      $letpoly .= ", " if $letpoly;
      $letpoly .= "$polyid=$polynomials{$polyid}";
    }
  }
  return $letpoly;
}

sub parse_polynomial {
  my $string = shift;
  if ($string =~ m/^($ID)\s*=\s*(.+)\s*$/) {
    my $polyid = $1;
    my $expr = $2;
    my $vars = join "=0, ",@varids; 
    $vars = "LET $vars=0 IN " if $vars;
    my $letpoly = let_poly $polyid;
    $letpoly = "LET $letpoly IN " if $letpoly;
    print $sock "(typecheck \"$vars$letpoly$expr\")\n";
    my $msg = receive_msg ". ";
    if ($msg) {
      $msg = trimin $msg;
      return print_error $msg;
    } else {
      @polyids = (@polyids,$polyid) if !grep /$polyid/,@polyids;
      $polynomials{$polyid}=$expr;
      print "Polynomial $polyid = $expr.\n";
    }
  } else {
    return print_error "Expecting a polynomial declaration".found($string);
  }
  return 1;
}

sub var_ands {
  my $varands = "";
  foreach my $var (@varids) {
    $varands .= " AND " if $varands;
    $varands .= "$variables{$var}[0] <= $var AND $var <= $variables{$var}[1]";
  }
  return $varands;
}

sub let_vars {
  my $string = shift;
  my @vals = split /,/,$string;
  my $letvars = "";
  foreach my $var (@varids) {
    $letvars .= ", " if $letvars;
    my $val = shift @vals;
    $letvars .= "$var = $val";
  }
  return $letvars;
}

sub rat2real {
  my $string = shift;
  return $1/$2 if $format eq "decimal" && $string =~ /^($DEC)\/($DEC)$/;
  return $string;
}

sub parse_minmax {
  my $string = shift;
  if ($string =~ m/^($ID)\s*$/) {
    my $polyid = $1;
    my $poly = $polynomials{$polyid};
    if ($poly) {
      return print_error "No variables have been declared" if !@varids; 
      my $vars =  join ",",@varids;
      my $varands = var_ands();
      my $lambdavars = "LAMBDA($vars:real):$varands";
      my $letpoly = let_poly $polyid;
      $letpoly = "LET $letpoly IN " if $letpoly;
      my $lambdapoly = "LAMBDA($vars:real):$letpoly$poly";
      my $vs = ($vardir eq "auto" ? "MaxVarMinDir" : $vardir);
      print $sock 
	"(minmax \"$lambdavars\" \"$lambdapoly\" \"$maxdepth\" \"$vs\" \"$precision\")\n";
      my $msg = receive_msg ". ";
      if ($msg =~ /^Minmax:(.*)$/) {
	$msg = $1;
	$msg =~ s/\. //g;
	$msg =~ s/\s//g;
	$msg =~ /^\(($NUM),($NUM),$LIST,($NUM),($NUM),$LIST,($NUM),($NUM)\)$/;
	printall_upto($polyid);
	print "Minimum/Maximum values of $polyid within a precision of $precision:\n";

	my $min_lb = rat2real($1);
	my $min_ub = rat2real($2);
	my $max_lb = rat2real($4);
	my $max_ub = rat2real($5);

	if ($1 eq $2) {
	  print "  min{$polyid} = $min_lb,\n";
	} else {
	  print "  min{$polyid} in [$min_lb,$min_ub],\n";
	}
	my $minvars = let_vars($3);
	print "  $polyid = $min_ub, when $minvars,\n";
	if ($4 eq $5) {
	  print "  max{$polyid} = $max_lb,\n";
	} else {
	  print "  max{$polyid} in [$max_lb,$max_ub],\n";
	}
	my $maxvars = let_vars($6);
	print "  $polyid = $max_lb, when $maxvars.\n";
	print "--\nMin/max values may be inaccurate due to decimal format. Set format to 
rational for precise values.\n" if $format eq "decimal";
	print "--\nDepth: $7.\n";
	print "Number of splits: $8.\n";
      } else {
	return print_error $msg;
      }
    } else {
      return print_error "Polynomial identifier $1 has not been declared";  
    }
  } else {
    return print_error "Expecting a polynomial identifier".found($string);
  }
  return 1;
}

sub delist {
  my $string = shift;
  $string =~ s/:\),\(:/;/g;
  $string =~ s/\(://g;
  $string =~ s/:\)//g;
  return $string;
}

sub regions_expr {
  my $op = shift;
  my $neg = shift;
  my $relax = shift;
  my $string = shift;
  my @polrels = split /$op/,$string;
  my $regionstr = "";
  foreach my $polrel (@polrels) {
    $polrel = trim($polrel);
    if ($polrel =~ m/^($ID)\s*([<>]=?)\s*($NUM)$/) {
      $regionstr .= "," if $regionstr;
      my $rel = $2;
      $rel = neg_rel($rel) if $neg;
      $regionstr .= "$1$rel$3";
      return print_error "Polynomial identifier $1 has not been declared" if !$polynomials{$1};
    } elsif (!$relax) {
      return print_error "Expecting polynomial inequality".found($polrel);
    } else {
      return "";
    }
  }
  return $regionstr;
}

sub parse_region {
  my $string = shift;
  if ($string =~ /^($ID)\s*=(.+)$/) {
    my $region = $1;
    my $regiondef = trim($2);
    $string = $regiondef;
    my $regionstr;
    my $op;
    if ($string =~ /^(.+)\s+implies\s+(.+)$/) {
      my $str1 = regions_expr("and",1,0,$1);
      return -1 if $str1 == -1;
      $op = "or";
      my $str2 = regions_expr($op,0,0,$2);
      return -1 if $str2 == -1;
      $regionstr = "$str1,$str2";
    } else {
      $op = "and";
      $regionstr = regions_expr($op,0,1,$string);
      if (!$regionstr) {
	$op = "or";
	$regionstr = regions_expr($op,0,0,$string);
      }
      return -1 if $regionstr == -1;
    }
    if ($regionstr) {
      $regions{$region}=$regionstr;
      $regions_opdef{$region}=[$op,$regiondef];
    } else {
      return print_error "Expecting a polynomial inequality";
    }
    print "Region $region = $regiondef.\n"; 
  } else {
    return print_error "Expecting a region declaration".found($string);
  }
  return 1;
}

sub parse_boxes {
  my $string = shift;
  if ($string =~ /^($ID)$/) {
    return print_error "No variables have been declared" if !@varids; 
    my $region = $1;
    my $string = $regions{$region};
    return print_error "Region identifer $region has not been declared" if !$string;
    my $op = $regions_opdef{$region}[0];
    my @polrels = split /,/,$string;
    my $lambdapolys = "";
    my $vars =  join ",",@varids;
    foreach my $polrel (@polrels) {
      $polrel =~ m/^($ID)([<>]=?)($NUM)$/;
      my $polyid = $1;
      my $rel = $2;
      my $k = $3;
      my $poly = $polynomials{$polyid};
      my $tozero = "-$k" if $k;
      my $letpoly = let_poly $polyid;
      $letpoly = "LET $letpoly IN " if $letpoly;
      $lambdapolys .= " \"LAMBDA($vars:real):$letpoly$poly$tozero $rel 0\"";
    }
    my $varands = var_ands();
    my $lambdavars = "LAMBDA($vars:real):$varands";
    print $sock 
      "(boxes \"$op\" \"$lambdavars\" ($lambdapolys ) \"$maxdepth\" \"$precision\")\n";
    my $msg = receive_msg ". ";
    if ($msg =~ /^Boxes: \((.+)\)$/) { 
      $msg = $1;
      $msg =~ s/\. //g;
      $msg =~ s/\s//g;
      $msg =~ /^($NUM),($NUM),($NUM),($NUM),($NUM),($NUM),(.+)$/;
      printall_upto("");
      print "Boxes for $regions_opdef{$region}[1] within a precision of $precision:\n";
      my $lin  = $1;
      my $vin  = rat2real($2);
      my $lout = $3;
      my $vout = rat2real($4);
      my $lun  = $5;
      my $vun  = rat2real($6);
      my $bx   = $7;
      $bx =~ /^$LIST,\";\",$LIST,\";\",$LIST,\";\",$LIST,\";\",$LIST,\";\",$LIST$/;
      my $inlb  = delist($1);
      my $inub  = delist($2);
      my $outlb = delist($3);
      my $outub = delist($4);
      my $unlb  = delist($5);
      my $unub  = delist($6);
      print "  Inside : $lin. Relative volume: $vin.\n";
      print "  Outside: $lout. Relative volume: $vout.\n";
      print "  Unknown: $lun. Relative volume: $vun.\n";
      print "--\nRelative volumes may be inaccurate due to decimal format. Set format to 
rational for precise values.\n" if $format eq "decimal";
      open BOXES, ">$region.m" or die "\n";
      print "--\nBoxes are found in $region.m (MATLAB format).\n";
      print BOXES<<EOF;

INSIDE_lb = [$inlb];

INSIDE_ub = [$inub];

OUTSIDE_lb = [$outlb];

OUTSIDE_ub = [$outub];

UNKNOWN_lb = [$unlb];

UNKNOWN_ub = [$unub];

EOF
      close BOXES;
    } else {
      return print_error $msg;
    }
  } else {
    return print_error "Expecting a region identifier";
  }
  return 1;
}

sub neg_rel {
  my $rel = shift;
  return ">=" if $rel eq "<";
  return ">" if $rel eq "<=";  
  return "<=" if $rel eq ">";
  return "<" if $rel eq ">=";

}

sub auto_vardir {
  my $rel = shift;
  return "MaxVarMinDir" if $rel eq ">" || $rel eq ">=";
  return "MaxVarMaxDir";
}

sub parse_check {
  my $string = shift;
  if ($string =~ /^(all|some)\s+($ID)\s*([<>]=?)\s*($NUM)$/) {
    return print_error "No variables have been declared" if !@varids; 
    my $all = "true";
    my $polyid = $2;
    my $rel = $3;
    my $tryrel = $rel;
    my $k = $4;
    if ($1 eq "some") {
      $all = "false";
      $tryrel = neg_rel($rel);
    }
    my $vars =  join ",",@varids;
    my $poly = $polynomials{$polyid};
    if ($poly) {   
      my $tozero = "-$k" if $k;
      my $letpoly = let_poly $polyid;
      $letpoly = "LET $letpoly IN " if $letpoly;
      my $lambdapoly = "LAMBDA($vars:real):$letpoly$poly$tozero $tryrel 0";
      my $varands = var_ands();
      my $lambdavars = "LAMBDA($vars:real):$varands";
      my $vs = ($vardir eq "auto" ? auto_vardir($tryrel) : $vardir);
      print $sock 
	"(check \"$lambdavars\" \"$lambdapoly\" \"$maxdepth\" \"$vs\" \"$all\")\n";
      my $msg = receive_msg ". ";
      if ($msg =~ /^Check:(.*)$/) {
	$msg = $1;
	$msg =~ s/\. //g;
	$msg =~ s/\s//g;
	printall_upto($polyid);
	print "The polynomial inequality\n";
	print "  $polyid $rel $k,\n";
	if ($all eq "true") {
	  if ($msg =~ /IsTrue/) {
	    print "holds for all $vars.\n";
	    if ($pvsfile) {
	      $pbs++;
	      print "Saving formula $polyid\_$pbs in $pvsfile.pvs.\n";
	      print PVSFILE<<EOF;
  $polyid\_$pbs : LEMMA
    FORALL($vars:real): 
      $varands IMPLIES
      $letpoly$poly $rel $k
  \%|- $polyid\_$pbs : PROOF (bernstein :depth $maxdepth :vardir "$vs") QED

EOF
	    }
	  } elsif ($msg =~ /$LIST/) {
	    my $nrel = neg_rel($rel);
	    my $letvars = let_vars($1);
	    print "doesn't hold when $letvars.\n";
	    if ($pvsfile) {
	      my $ppbs=++$pbs;
	      $pbs++;
	      print "Saving formulas $polyid\_$ppbs and $polyid\_$pbs in $pvsfile.pvs.\n";
	      print PVSFILE<<EOF;
  $polyid\_$ppbs : LEMMA
    EXISTS($vars:real): 
      $varands AND
      $letpoly$poly $nrel $k
  \%|- $polyid\_$ppbs : PROOF (bernstein :depth $maxdepth :vardir "$vs") QED

  $polyid\_$pbs : LEMMA
    LET $letvars IN
      $varands AND
      $letpoly$poly $nrel $k
  \%|- $polyid\_$pbs : PROOF (eval-formula) QED

EOF
	    }
	  } else {
	    print "may or may not hold. Try a maximum depth greater than $maxdepth.\n";
	  }
	} else {
	  if ($msg =~ /IsTrue/) {
	    print "doesn't hold for any $vars.\n";
	    if ($pvsfile) {
	      $pbs++;
	      print "Saving formula $polyid\_$pbs in $pvsfile.pvs.\n";
	      print PVSFILE<<EOF;
  $polyid\_$pbs : LEMMA
    FORALL($vars:real): 
      $varands IMPLIES
      $letpoly$poly $tryrel $k
  \%|- $polyid\_$pbs : PROOF (bernstein :depth $maxdepth :vardir "$vs") QED

EOF
	    }
	  } elsif ($msg =~ /$LIST/) {
	    my $letvars = let_vars($1);
	    print "holds when $letvars.\n";
	    if ($pvsfile) {
	      my $ppbs=++$pbs;
	      $pbs++;
	      print "Saving formulas $polyid\_$ppbs and $polyid\_$pbs in $pvsfile.pvs.\n";
	      print PVSFILE<<EOF;
  $polyid\_$ppbs : LEMMA
    EXISTS ($vars:real): 
      $varands AND
      $letpoly$poly $rel $k
  \%|- $polyid\_$ppbs : PROOF (bernstein :depth $maxdepth :vardir "$vs") QED

  $polyid\_$pbs : LEMMA
    LET $letvars IN
      $varands AND
      $letpoly$poly $rel $k
  \%|- $polyid\_$pbs : PROOF (eval-formula) QED

EOF
	    }
	  } else {
	    print "may or may not hold. Try a maximum depth greater than $maxdepth.\n";
	  }
	}
      } else {
	return print_error $msg; 
      }
    } else {
      return print_error "Polynomial identifier $1 has not been declared";  
    }
  } else {
    return print_error "Expecting all|somme and a polynomial inequality".found($string);
  }
  return 1;
}

sub parse_set {
  my $string = shift;
  if ($string =~ m/^precision\s*=\s*($NUM)\s*$/) {
    if (0 < $1) {
      $precision=$1;
      print "Precision is set to $1.\n";
    } else {
      return print_error "Precision must be a positive rational number";
    }
  } elsif ($string =~ m/^maxdepth\s*=\s*($INT)\s*$/) {
    if ($1 >= 0) {
      $maxdepth=$1;
      print "Maximum depth is set to $1.\n";
    } else {
      return print_error "Maximum depth must be a non-negative number";
    }
  } elsif ($string =~ m/^vardir\s*=\s*($WORD)\s*$/) {
    $vardir = $1;
    print "Variable selection method is set to $vardir.\n";
  } elsif ($string =~ m/^format\s*=\s*($WORD)\s*$/) {
    if ($1 ne "rational" && $1 ne "decimal") {
      return print_error "Format must be either decimal or rational";
    } else {
      $format = $1;
      print "Format is set to $1.\n";
    }
  } else {
    return print_error "Expecting valid settings".found($string);
  }
  return 1;
}

sub parse_pvsfile {
  my $string = shift;
  if ($string =~ m/($WORD)$/) {
    $pvsfile = $1;
    $pbs = 0;
    my $now = time_now();
    open PVSFILE, ">$pvsfile.pvs" or die "\n";
    print "Opening PVS file $pvsfile.pvs.\n";
    print PVSFILE<<EOF;
\% File created on $now
$pvsfile: THEORY
BEGIN

  IMPORTING Bernstein\@strategy

EOF
  } else {
    return print_error "Expecting a file identifier".found($string);
  }
  return 1;
}

sub parse_close {
  my $string = shift;
  if (!$pvsfile) {
    return print_error "PVS file has not been opened";
  } elsif (!$string)  {
    print "Closing PVS file $pvsfile.pvs.\n";
    print PVSFILE "END $pvsfile\n";
    close PVSFILE;
    $pvsfile = "";
    $pbs = 0;
  } else {
    return print_error "Found $string";
  }
  return 1;
}

sub parse_show {
  my $string = shift;
  if ($string eq "settings") {
    print "Precision is currently set to $precision.\n";
    print "Maximum depth is currently set to $maxdepth.\n";
    print "Variable selection method is currently set to $vardir.\n";
    print "Display format is $format.\n";
  } elsif ($string eq "identifiers") {
    if (@varids) {
      my $vars = join ", ",@varids;
      print "Variables: $vars.\n";
    } else {
      print "No variables have been declared.\n";
    }
    if (@polyids) {
      my $pols = join ", ",@polyids;
      print "Polynomials: $pols.\n";
    } else {
      print "No polynomials have been declared.\n";
    }
    my @regionids = keys %regions;
    if (@regionids) {
      my $regs = join ", ",@regionids;
      print "Regions: $regs.\n";
    } else {
      print "No regions have been declared.\n";
    }
  } elsif ($string =~ /^\"(.*)\"$/ ) {
    print "$1\n";
  } elsif ($string) {
    my $var = $variables{$string};
    my $i=0;
    if ($var) {
      @vals = @{ $var };
      print "Variable $string in [$vals[0],$vals[1]].\n";
      $i++;
    } 
    my $poly = $polynomials{$string};
    if ($poly) {
      $i++;
      print "Polynomial $string = $poly.\n";
    } 
    my $region = $regions_opdef{$string}[1];
    if ($region) {
      $i++;
      print "Region $string = $region.\n";
    } 
    if (!$i) {
      return print_error "No identifier $string has been declared";
    }
  } else {
    return print_error "Expecting <id>, \"<string>\", identifiers, or settings";
  }
  return 1;
}

sub man {
  print<<EOF;
Grizzly is an interactive interface to the PVS Bernstein package.
Usage: grizzly <options> [<file>]
The following options are available:
 -help
\tPrint this information.
 -server <host>[:<port>]
\tConnect to the server <host>[:<port>]
 -precision <e> 
\tSet default precision to <e>, where <e> is a positive rational number.
\tWhen computing min/max values, <e> is an absolute precision on these
\tvalues. When computing boxes, <e> is the size of the smallest unknown 
\tboxes, relative to the original size of the variable intervals.
 -maxdepth <d>
\tSet the default maximum depth to <d>, where <d> is a nonnegative number.
 -vardir <v> 
\tSet the default variable selection method to <v>, where <v> is an 
\theuristic for selecting variables and direction when subdividing the 
\trange of the variables, e.g., MaxVarMinDir,  MaxVarMaxDir, 
\tAltVarLeftRight, AltVarRightLeft (see Bernstein/vardirselector.pvs). 
\tIf <v> is auto, an appropriate method is automatically selected.
 -format decimal | rational
\tSet the default format to display rational numbers.
Load <file>, if provided.
EOF
  die "\n";
}

sub help {
  print<<EOF;
The interactive input has the form 
  grizzly> <command> <options>;
where <command> <options> can be (<command>s areexit;
 case insensitve):
  help
\tPrint this information.
  quit | exit
\tQuit the program.
  load <file>
\tLoad <file>.
  var | variable <v> in [<lb>,<ub>]
\tDeclare varible <v> in the interval [<lb>,<ub>].
  poly | polynomial <P> = <polynomial>
\tDeclare polynomial identifier <P> as <polynomial>.
  region <R> = <P1> <rel1> <k1> and ... and <Pn> <reln> <kn> |
               <P1> <rel1> <k1> or ... or <Pn> <reln> <kn> |
               <P1> <rel1> <k1> and ... implies <Pn> <reln> <kn> or ...
\tDeclare region identifier <R> as the conjuntion, disjunction, or
\timplication of polynomial inequalities <Pi> <reli> <ki>, where <Pi> 
\tis a polynomial identifier, <reli> is one of {<,<=,>,>=}, and <ki> 
\tis a number. 
  minmax <P>
\tCompute minimum and maximum values of polynomial represented by 
\tidentifier <P>.
  check all | some <P> <rel> <k>
\tCheck if all (some) variables satisfies the polynomial inequality
\t<P> <rel> <k>, where <P> is polynomial identifier, <reli> is one 
\tof {<,<=,>,>=}, and <ki> is a number. 
  boxes <R>
\tCompute boxes for the region identified as <R>.
  set precision = <e> 
\tSet precision to <e>, a positive rational number. When computing 
\tmin/max values, <e> is an absolute precision on these values. 
\tWhen computing boxes, <e> is the size of the smallest known  
\tboxes, relative to the original size of the variable intervals.
      maxdepth = <d>
\tSet the default maximum depth to <d>, where <d> is a nonnegative number.
      vardir = <v>
\tSet the variable selection method to <v>, where <v> is an 
\theuristic for selecting variables and direction when subdividing the 
\trange of the variables, e.g., MaxVarMinDir, MaxVarMaxDir, 
\tAltVarLeftRight, AltVarRightLeft (see Bernstein/vardirselector.pvs). 
\tIf <v> is auto, an appropriate method is automatically selected.
      format decimal | rational
\tSet the default format to display rational numbers.
  pvsfile <file>
\tOpen output PVS file <file>.pvs
  close 
\tClose PVS file <file>.pvs
  show <id> | \"<string>\" | identifiers | settings
\tDisplay identifier <id>, string <string>, the list of all identifiers, or the current 
\tsettings, respectively.
  server die | quiet | verbose | status | lock | unlock | close | open [<ID>]
\tSend command to server <ID>.
EOF
}

sub load_file {
  my $file = shift;
  my $error = 0;
  open FILE, "<$file" or $error=1;
  if ($error) {
    print_error "File not found: $file";
  } else {
    my $input = *FILE;
    while (parse_command(read_lines($input)) > 0) {};
    close $input;
  }
  return $error;
}

sub found {
  my $string = shift;
  return ". Found: $string" if $string;
}

$vardir="auto";
$pvsfile="";
$pbs=0;

GetOptions('server=s'=>\$server, 
	   'precision=s'=>\$precision,
	   'maxdepth=i'=>\$maxdepth,
           'vardir=s'=>\$vardir,
	   'format=s'=>\$format,
           'help'=>\$help) or die "\n";

my $file = shift;
my $last = shift;

man if $help || $last; 

if ($precision || $precision eq "0") {
  $precision =~/($NUM)/;
  if (!$1 || !(0 < $1)) {
    print "*Warning* Precision must be a positive rational number. Default 
value $PRECISION will be used.\n";
    $precision = $PRECISION;
  } 
} else {
 $precision = $PRECISION;
}

if ($maxdepth || $maxdepth eq "0") {
  if (!($maxdepth >= 0)) {
    print "*Warning* Maximum depth must be a non-negative number. Default value $MAXDEPTH
will be used.\n";
    $maxdepth = $MAXDEPTH;
  }
} else {
  $maxdepth = $MAXDEPTH;
}

if ($format) {
  if ($format ne "rational" && $format ne "decimal") {
    print "*Warning* Format must be either decimal or rational. Default value $FORMAT will be used.\n";
    $format = $FORMAT;
  }
} else {
  $format = $FORMAT;
}

@host_port = split /:/,$server;

$host = $host_port[0];
$host = $HOST if !$host;

$port = $host_port[1];
$port = $PORT if !$port;

$sock = new IO::Socket::INET (PeerAddr => $host, 
			      PeerPort => $port, 
			      Proto => 'tcp');
die "Can't connect to Grizzly server at $host:$port. Please, try later.\n" unless $sock; 

print $sock "nil\n";
my $msg = receive_msg "";
if (!($msg eq "OK")) {
  close $sock;
  die "Grizzly server is not accepting more connections at this time. Please, try later.\n";
} 

if ($file) {
  my $error = load_file($file);
  clean_exit() if $error;
}

print "Welcome to Grizzly. Enter a command followed by a semicolon, e.g., help;\n";
my $input = *STDIN;
do {
  print "\n".($pvsfile ? $pvsfile : "grizzly")."> ";
} while (parse_command(read_lines($input)));
clean_exit();


