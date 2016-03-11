
# Copyright (c) 2012 United States Government as represented by
# the National Aeronautics and Space Administration.  No copyright
# is claimed in the United States under Title 17, U.S.Code. All Other
# Rights Reserved.
#
# The software in this package has been released as open-source software
# under the NASA Open Source Agreement.  See the accompanying file
# NASA_Open_Source_Agreement.pdf for a full description of the terms.


# Text sections of User's Guide

import os
#from Tkinter import BitmapImage

helpItems = (
    
('Introduction' ,
"Welcome to the <:topic::Hypatheon Client:>. \
This application allows users to query \
<:bold::Hypatheon databases:> and view the results using a GUI-based tool. \
When a connection is established by a running PVS process, \
Hypatheon provides users with \
proof-side assistance in finding suitable lemmas within PVS libraries. \
It also can retrieve \
other declarations, and displays the full theories that contain them. \
\n\n\
Select a topic from the list on the left to \
view a description of the corresponding features. \
If you are a new user, begin with the <:topic::Overview:>. \
Consult the more detailed topics as needed. \
\n\n\
The main Hypatheon web site is located at: \
\n\n    http://shemesh.larc.nasa.gov/people/bld/hypatheon.html \
\n\n\
General correspondence to the Hypatheon \
administrator(s) should be directed to: \
\n\n    Ben Di Vito <b.divito@nasa.gov> \
\n\n\
" ) ,

('Overview' ,
"Hypatheon makes use of database indexing and search techniques. \
The client can be started in one of three operating modes: \
\n\n\
    <:italic::Search-only:> -- In this mode, users may search pre-built databases \
that are bundled with the Hypatheon distribution. \
No PVS installation is assumed and no PVS libraries need to be present. \
Users may run queries and view results, but will not be \
able to index any PVS files. This mode is suitable for those who are \
not PVS users but wish to browse publicly distributed PVS libraries. \
\n\n\
    <:italic::Stand-alone:> -- This second mode is similar to Search-only except \
that a working PVS installation is assumed as well as a set of PVS \
libraries. These directories are found via the environment variables \
<:bold::PVSPATH:> and <:bold::PVS_LIBRARY_PATH:>. \
Users may index any libraries accessible \
through these variables. This mode is useful during specification \
development or other times when users are not engaged in proving. \
A command line script called <:bold::hypatheon:> is provided for launching \
the client in this mode. \
\n\n\
    <:italic::PVS-client:> -- The final mode, likely to be used most often, \
offers the full set of services. The client process is started from PVS \
and a <:bold::connection between Hypatheon and PVS:> is maintained. \
This arrangement allows users \
to invoke lemmas discovered in Hypatheon searches. It also allows users \
to extract information from the proof state to initiate additional searches. \
\n\n\
Hypatheon has a software architecture based on the following components: \
\n\n\
    <:italic::Server:> -- implemented using the <:bold::SQLite:> embedded database engine. \
Rather than running as a separate process, the server is accessed as \
a shared library on your desktop machine. Each database is stored in \
a <:bold::single SQLite file:>.\
\n\n\
    <:italic::Client:> -- implemented as <:bold::Python:> software along with the <:bold::Tcl/Tk:> GUI toolkit. \
The client provides the primary interface, allowing users to invoke \
queries and display results. \
When a suitable lemma is located for the next \
proof step, the user selects a button to submit the appropriate prover \
command to PVS. Additionally, users may view file contents, \
launch external editors, invoke shell commands, and perform other tasks \
based on query results. \
\n\n\
In PVS-client mode, the client runs as a \
<:bold::subprocess:> of the top-level PVS Emacs process. \
It interacts with PVS as needed to request information and \
insert prover commands. \
Normal user interaction with PVS is unaffected by the client's presence. \
PVS users are free to use Hypatheon services to whatever extent is desired. \
Hypatheon also can be launched in Stand-alone mode or Search-only mode, \
where the same search \
functions can be invoked without a connection to PVS. \
\n\n\
    <:italic::Scripts:> -- includes assorted items for conducting file indexing and \
performing various maintenance chores. \
\n\n\
Currently, Hypatheon requires that file indexing be performed as a separate, \
explicitly managed activity. \
Many users, though, will have no need to index libraries themselves. \
They can rely on databases that are distributed with Hypatheon \
or third-party library collections. \
If they wish, users may index any existing libraries \
already residing on their desktop systems. \
Indexing can be performed on demand or in a regularly scheduled manner. \
\n\n\
Although the original Hypatheon concept aimed to host a database server \
at NASA, the desktop version of Hypatheon is designed instead for \
strictly local operation. It makes no attempt to access \
any Internet sites or initiate external communication of any kind. \
" ) ,

# ('Client Architecture',
#  BitmapImage(file=os.path.join(base_directory, 'client-arch.xbm')) ) ,
# #*** saves a reference to prevent GC of image object

('PVS Entities',
 "The PVS language supports a variety of <:bold::named entities:>, \
most of which \
are searchable by Hypatheon. Also included is the PVS library concept, \
an aggregating structure implemented by file and directory conventions. \
Searches are conducted on declarations by default. By explicitly stipulating \
one or more PVS entity types, searches can be conducted for non-declarations \
or subcategories of declarations. \
\n\n\
The following entity hierarchy is supported by Hypatheon: \
\n\n\
	Library \n\
	Module \n\
	    Theory \n\
	    Datatype \n\
	Declaration \n\
	    Formula \n\
	    Function \n\
	    Constant \n\
	    Judgement \n\
	    Type \n\
	    TCC \n\
	Proof \n\
	    F_proof (formula) \n\
	    J_proof (judgement) \n\
	    T_proof (TCC) \n\
	Step \n\
	    Primitive_rule \n\
	    Defined_rule \n\
	    Strategy \n\
\n\
Searches can be performed for one of the top-level entities, or \
for a disjunction of the sub-entities, provided they are all in the \
same group. \
\n\n\
Note that 'formula' includes the basic varieties of PVS formula declarations \
such as lemmas, theorems and axioms. It does not include \
judgements or TCCs, for which there are separate sub-entities. \
Besides generating TCCs for well-formedness, \
PVS also generates one or more TCCs to \
establish the validity of each judgement. Proofs labeled 'J_proof' \
are actually proofs for these judgement TCCs. \
\n\n\
Also note that 'function' and 'constant' \
introduce a distinction not present in \
PVS terminology for declarations. Together they comprise the notion of \
constant in the PVS language. Functions in Hypatheon are function-valued \
PVS constants, while Hypatheon constants are non-function-valued \
PVS constants. \
" ) ,

('Library Collections' ,
 "Hypatheon groups <:bold::PVS libraries:> into <:bold::collections:>, \
where each collection is associated with a single SQLite database file. \
This facilitates the (re)distribution \
of public library collections as well as the development and maintenance \
of private or project-specific collections. \
Multiple databases are accessed simultaneously during queries. \
Search results are merged and presented as an integrated display. \
\n\n\
Hypatheon automatically finds and establishes connections to all \
active databases during initialization. \
A simple convention is followed for naming database files. \
The collection 'aerolib', for example, would reside in \
database file 'hyp-aerolib.sdb' (or 'hyp-aerolib-2.3.sdb' if version \
numbering is used). \
The default directory for storing database files is <path>/Hypatheon/data. \
Database files also can be placed in <pvs-path>/lib or \
any directory reachable through the <:bold::PVS_LIBRARY_PATH:> variable. \
Recommended practice is to place database files in the same parent directory \
where PVS libraries reside. \
\n\n\
When multiple database files are found with the same collection name \
(e.g., 'hyp-aerolib-2.3.sdb' and 'hyp-aerolib-3.1.sdb'), only the \
<:bold::newest file:> is considered <:bold::active:>. \
The others are considered <:bold::superseded:> \
and will not be opened by the client. \
\n\n\
Pre-built Hypatheon database files may be downloaded \
from the Hypatheon web page \
( http://shemesh.larc.nasa.gov/people/bld/hypatheon.html ). \
The <:bold::collection 'core':> indexes the libraries distributed with PVS \
(prelude, finite_sets, bitvectors). \
The <:bold::collection 'nasalib':> includes these plus the more substantial \
set of libraries maintained by NASA Langley. \
\n\n\
Since PVS release 6.0, the NASA library distribution (available at \
http://shemesh.larc.nasa.gov/fm/ftp/larc/PVS-library/ ) \
includes Hypatheon and a pre-built database file. \
This database will \
be refreshed periodically as the NASA libraries are updated. Users who \
retrieve a newer library collection will also retrieve \
a matching, pre-built database that will be immediately useable. \
This is the preferred way to obtain pre-built databases. \
\n\n\
Private collections can be developed and shared easily with project members. \
All that is necessary is to include the database file(s) in the library \
distributions that are given to other users. For example, team members \
working on a project called NGATS might develop and share a \
library collection that is stored in directory <path>/ngats. By including \
a database file named 'hyp-ngats.sdb' in this directory, team members will \
have access to a common Hypatheon database having collection name 'ngats'. \
\n\n\
The menu item <:topic::Databases > Manage Library Databases:> \
provides functions for \
creating and deleting collections and their database files. \
" ) ,

# Also useful to include in this directory is a file called VERSION \
# containing the collection's version number. \

('Search Terms' ,
 "To query the Hypatheon database, enter one or more search terms in \
the appropriate entry fields of the client GUI. \
Matching entities must satisfy all terms simultaneously. \
Searching is <:bold::case-insensitive:> so terms can be typed in lower case. \
\n\n\
Kinds of search terms include: \
\n\n\
 - <:bold::Name::> strings found anywhere within an entity's name. \
\n\n\
 - <:bold::Refs::> strings found anywhere within an entity E's name, where \
E is referenced by an entity in the query results. \
(See topic <:topic::Generalized References:> for additional features.) \
\n\n\
 - <:bold::Path::> strings found within the fully qualified name of a PVS entity \
(library@theory) or collection names (e.g., '[public]'). \
\n\n\
 - <:bold::Type::> entity type(s) of result items, selectable from a pull-down menu. \
\n\n\
Leaving a field blank means there will be no constraints of that kind \
in the search criteria. Any combination of the four fields may be used to \
express a query. Each term must match some part of the name or string \
in question for an item to be included in the results. Entity-type \
terms (<:bold::Type::>) are different from the others \
in that multiple terms denote \
<:bold::disjunctive rather than conjunctive:> matching. \
\n\n\
Search terms may be expressed in negative form by preceding them with \
'!' or '-' (without intervening blanks). Negative terms indicate that \
successful matches must not contain those strings or words. \
\n\n\
As a shortcut, queries also can be entered using a \
<:bold::single-string format:>. \
Terms for the four \
categories are written with semicolons as delimiters. Typing terms \
in the Name entry using this format will cause them to be parsed \
appropriately. Semicolon-delimited queries are also \
used with the command line script, <:bold::hypfind:>. \
\n\n\
Each search term is a string of nonblank characters, possibly containing \
wildcards, that represents a pattern to be matched against PVS entity \
names. <:bold::Wildcard characters:> are drawn from those used in the \
<:bold::SQL language:> for relational databases. \
\n\n\
The <:bold::'%' meta-character:> matches a string of zero or more \
arbitrary characters. \
For example, searching for lemma names using 'ar%y' \
might return 'array_decomp', 'bv_unary_minus', \
'card_emptyset', and 'div_parity'. By default, each term has outer \
'%' wildcards appended automatically. \
Place (single or double) quotes around a term \
to suppress this action and request full-string (anchored) matching. \
\n\n\
When searching for lemma, theory or library names, the literal characters in \
patterns should adhere to the character set for valid PVS identifiers. \
When searching for function names, however, the special characters \
found in PVS operators also may be included. For instance, the strings \
'+', '/' and '<=' are all valid search terms in addition to \
alphanumeric strings such as 'sqrt', 'cos', 'sigma', etc. \
\n\n\
Search item (entity) types may be abbreviated to any initial prefix of the \
allowed values such as 'func' or 'ty'. \
Also, it is possible to search for libraries and modules \
(theories or datatypes) by selecting those \
choices for the Type field. These choices may not be mixed \
with other types. Although the results returned are not declarations, \
a similar kind of display is presented. \
" ) ,

#  - Path: strings found within a path name, or file name pattern(s) \
# formed using regular expressions; \
# \n\n\
#  - Date: one or two date-time strings, each of the form y/m/d/h/m/s, \
# truncated at any point; if omitted, the second date is 'now'; \
# \n\n\

# \n\n\
# For the path and content search terms, each 'word' is an alphanumeric \
# string containing at least one letter. Special characters may also be \
# used. Some 'words' containing embedded blanks (e.g., file names) may be \
# specified by enclosing them in quotes (single or double). \
# File extensions may be searched by providing a leading period. \
# Path terms may include regular expressions using the forms \
# re'<pattern>' or re\"<pattern>\". \

('Query Results',
 "After the client receives the server's response to a query request, \
a new tabbed page is created to display the results. \
At the top are the search terms for future reference. \
The upper left corner displays numbers of the \
form 'M/N', which means the first M cases out of a total of N matches \
are displayed below. \
\n\n\
A <:bold::history list:> is maintained of all queries (search term sets) that \
were issued during the current session and recent previous sessions. \
You may see this list \
(displayed in reverse chronological order) by \
selecting <:topic::Redo Previous Query:> from the Edit menu. \
The most recent 100 items from this list will be saved to a file when \
Hypatheon exits so they will be available in the next session. \
\n\n\
A result list is created for PVS entities that match the query, \
with each item displaying a multiline summary. \
Each declaration entry contains the first two lines \
(or more based on preference settings) \
of its declaration with the name highlighted. \
When the client is connected to PVS, the name is displayed in gray \
if the item is not found on the current <:bold::import chain:>. \
When an entity appears in more than one active database, multiple occurrences \
of it can appear in the result list. \
\n\n\
Clicking on a matching item's summary causes the relevant theory \
to be <:bold::displayed in the lower panel:>. \
The bottom line of the summary shows the item's relative path name (in red), \
followed by a ranking score as given by the \
search algorithm, then the PVS file's date, collection name and path prefix. \
(Less information is shown in Search-only mode. \
The ranking score is currently set to 1; meaningful score values will appear \
in a future enhancement.) \
\n\n\
The red path name also serves as a button-like field. \
When clicked with the middle button, it causes \
a string of the form 'library@theory' to be inserted as a Path \
term so that the next search can be restricted to one theory. \
For declarations and proofs, the bottom lines will display on the right \
(in green) the phrases Show Proof and Show Theory, respectively. \
These are left-clickable buttons, in this case \
to change the information displayed in the lower panel. \
\n\n\
<:bold::Context menus:> are provided for list items. \
Clicking with the right button on an item pops up a menu for displaying \
the file in a separate window; copying the declaration, theory/library names, \
or path/file names to the clipboard; \
or launching an external editor on the file. \
Also, the theory display in the lower panel \
highlights declaration names in blue. \
Right clicking on one of these names pops up a menu \
of actions so arbitrary declarations from the containing theory \
can be used, not just the ones returned as query results. \
\n\n\
Theory displays in the lower panel \
also support a hypertext-like, <:bold::mouse-over feature:>. \
When the mouse cursor hovers over an identifier for two seconds, \
the name will be looked up in the \
database to find relevant declarations having that name. \
A temporary display of the most suitable one will be shown. \
This works for any identifier, not just the ones highlighted in blue. \
Left-clicking an identifier will initiate a Name query for that item, \
even if it is a theory or library name. \
Middle-clicking an identifier will initiate a Ref query for that item. \
Right-clicking an identifier will pop up a menu of other \
actions that may be invoked. \
\n\n\
At the top of each tabbed page, the search-term display box \
(to the right of the Next and All buttons) \
has an additional context menu that enables you to copy to the clipboard \
similar information as for a single PVS item, \
except that lists of items derived \
from the full search results are generated. \
(Caution: the list could be quite long \
because it includes all matching items, \
not just the ones currently shown.) \
To invoke this menu, right-click on the box showing the search terms. \
\n\n\
You also may invoke \
shell commands and launch terminal windows from context menus. \
This is useful for second-stage processing tasks such as running 'grep' \
on the file list returned by a query. \
\n\n\
" ) ,

('Invoking Lemmas' ,
"If Hypatheon is connected to PVS (i.e., running in PVS-client mode), \
and you would like to apply the selected lemma in the current proof, \
the buttons labeled <:bold::'Lem', 'Use' and 'Rew':> can be used to invoke \
the corresponding prover command (Lemma, Use, Rewrite). For example, \
if the selected lemma \
is 'sqrt_cauchy', clicking the Lem button causes the command \
\n\n\
  (lemma \"sqrt_cauchy\") \
\n\n\
to be sent to the prover. \
\n\n\
A prover command inserted by one of these buttons \
can fail for two reasons. First, the chosen lemma might require \
theory parameters to invoke the correct instance. In this case, \
simply issue M-s (in the PVS prover buffer) \
to insert the command text again, then edit the line \
to add the parameters. Second, the lemma can be missing from the import chain. \
To help you avoid this situation, the client's status line indicates whether \
the selected lemma is imported in the current context. \
\n\n\
Besides those lemmas returned by the search query, \
a user might find additional lemmas of interest in the full theory displayed \
in the lower panel. \
The theory display highlights <:bold::declaration names in blue:>. \
Right clicking on one of these names pops up a menu \
that allows the invocation of these additional formulas. \
\n\n\
NOTE: A possible feature considered as a future addition is one that allows \
Hypatheon to add IMPORTINGs to theories automatically. This would enable \
users to make maximum use of lemmas discovered through searches. \
The process would require stopping the current proof, modifying the theory, \
type-checking it again, then resuming the proof. \
Implementation of such a feature would be more involved than the current \
capability. \
" ) ,

('Initiating Queries from PVS',
 "Users may perform a search for any identifier found within any \
PVS Emacs buffer. Simply place the cursor on any character of the identifier, \
then invoke the Emacs <:bold::key binding C-c f:>. \
An exact-match, Name query will be run by the client and the results will be \
displayed in a new tab if any matches are found. \
When reading PVS source files, this feature helps find declarations \
from other theories. \
\n\n\
To a limited extent, this feature also can search for \
theory and library names. For example, \
contexts such as 'IMPORTING lib_name@thy_name' make this possible. \
Otherwise, a search for declaration names is assumed. \
\n\n\
Users also may construct reference queries with information from the \
prover buffer. \
The idea is to help users find lemmas that refer to functions found \
in the current sequent. \
Operations are available to \
collect function names from the prover buffer (*pvs*) \
and send them to the client, where they will be inserted into the \
Refs query field of the client's window. \
\n\n\
Two operations have been provided. \
The first is used to copy an identifier from the prover's Emacs buffer \
and send it to the client. Place the cursor anywhere within \
an identifier and type <:bold::TAB-@:>. The identifier \
will be lifted and sent. Ordinary cut-and-paste features may \
be used to achieve the same effect. Users can choose either method. \
\n\n\
The second operation is implemented as a prover strategy named \
<:bold::'query-append':>. \
Its invocation has no effect on the proof state (it's equivalent to (skip)) \
and thus will never be stored as part of the proof. \
The only effect of the strategy is to collect a list of function names \
from the current sequent and send them to the client to help form a query. \
\n\n\
The strategy can be called in three ways. If supplied \
string arguments (detected by the first argument being a string), they are \
passed along directly. If supplied formula numbers/symbols, \
the formulas will be probed to find all their function names, which then \
are submitted to the client. If supplied Manip extended expressions, \
the stipulated subexpressions of the sequent \
will be scanned for function names. \
\n\n\
Example: (query-append -2 1) \
extracts all function names from formulas -2 and 1, then \
sends those names to the client. The user may edit the query string \
before submitting it to the Hypatheon server." ) ,

('Library Indexing' ,
 "Indexing may be conducted simply by selecting a subset of PVS libraries \
accessible through the user's file system. Any libraries found in \
<pvs-path>/lib or those reachable through the PVS_LIBRARY_PATH variable \
may be used. Currently, indexing is performed on entire libraries; \
there is no way to select individual theory files. \
\n\n\
Indexing may be initiated from the client application \
(menu item: <:topic::Databases > Index Selected Libaries:>) \
or run via a batch script. \
Pre-built databases will be available from NASA Langley \
for the core PVS libraries (prelude, finite_sets, bitvectors) \
and the NASA PVS libraries. \
(Note that Hypatheon treats the prelude as a library, as if each theory \
within it belongs to a virtual file.) \
New users should find pre-built databases sufficient for getting started. \
\n\n\
In addition, Hypatheon supports the ability to \
index a user's private PVS files, as long they are organized \
as described in <:topic::PVS Library Conventions:>, and \
the library directory is reachable from PVS_LIBRARY_PATH. \
You may use a new database for this purpose or add on to an existing database. \
Once Hypatheon has indexed a user's private libraries, the suggested \
way to maintain the database is to run a periodic <:bold::'cron':> \
job to reindex the files. Hypatheon can generate \
the 'crontab' entries needed to carry this out. Using this setup, the \
indexes will be refreshed regularly without any special effort on the \
user's part. \
\n\n\
Indexing a moderately large set of libraries such as those distributed \
by NASA Langley can take about an hour. \
Periodic re-indexing is therefore best suited to overnight batch jobs. \
\n\n\
Large-scale indexing can be facilitated by compiling library groups \
in manifest files. Selecting the menu option \
<:topic::Databases > Index Library Grouping:> \
is the way to initiate such actions. The manifest file is simply a text file \
with the library names listed one per line. Indexing will be \
performed in the order of appearance. For users of the ProofLite PVS package, \
files of the form <name>.all can be used directly as manifest files. \
\n\n\
Indexing will be faster if the libraries have already been typechecked \
because the PVS-generated binary files will be available. \
To ensure that the latest changes to these files have been written before \
indexing, it is best to close any instances of PVS that were used \
to update the libraries. \
\n\n\
NASA Langley maintains databases for library collections called \
<:bold::'core' and 'nasalib':>. \
We recommend that you do \
not index your own libraries into these database files so that your work does \
not get overwritten when you update to a new version of the NASA libraries. \
The dialog windows for indexing and database management will show the \
core and nasalib \
collections in red as a reminder to use other database files for indexing. \
" ) ,
    
('PVS Library Conventions' ,
 "If you index your own libraries, they must be assembled in accordance with \
a modest set of conventions. Libraries failing to meet these conventions might \
not be indexed correctly or completely. Also, the indexing process itself \
could fail and generate strange errors \
when PVS files are not organized as expected. \
\n\n\
Conventions for creating a PVS library are as follows. \
\n\n\
 - All PVS source files for a library should be collected under a \
<:bold::single directory:> whose name is the library name. \
\n\n\
 - Library names should contain only alphanumeric characters and underscores. \
\n\n\
 - Ideally, within the library directory \
there should be exactly one PVS theory per PVS source file. \
Theory 'T' should reside in a file called <:bold::'T.pvs':>. \
\n\n\
 - If a file contains multiple theories, \
Hypatheon will still be able to process \
the theories correctly. Library management is simplified, however, by \
adhering to a one-theory-per-file rule. We strongly recommend this as \
standard practice. \
\n\n\
 - There needs to be a special file in each library directory \
called <:bold::'top.pvs':> that contains a theory called 'top'. \
\n\n\
 - The 'top' theory should contain only IMPORTING directives \
(and descriptive comments, if desired). \
Theory 'top' should import, directly or indirectly, all of \
the other theories in the library intended to be indexed. \
Provisional or test versions of theories are sometimes omitted from top.pvs. \
\n\n\
 - The goal is to ensure that typechecking 'top' \
will initiate a cascade of typechecking actions that collectively \
visit every desired theory in the library. \
\n\n\
 - Any theories <:bold::not reachable from 'top':> \
will not be indexed by Hypatheon. \
When the indexing process is finished, Hypatheon will report the \
theories and files in each library that were left unindexed. \
\n\n\
 - Users can find such unconnected theories later through the \
menu item <:topic::View > Unindexed Files:>. \
\n\n\
Please make sure your libraries adhere to these conventions before submitting \
them for Hypatheon indexing. \
" ) ,

('Managing Databases' ,
 "Besides library indexing, several other activities are available for \
managing databases and library collections. Libraries can be individually \
deleted from a database. Although there are few reasons why one would \
need to do this, a feature is provided to make deletion easy. \
Changing a library's name is one case where deletion is necessary. \
Re-indexing an existing library will automatically delete the old version, \
so it is unnecessary to explicitly invoke deletion in that case. \
\n\n\
<:bold::Database files:> can be <:bold::created, deleted or emptied:>. \
These actions can be performed under the menu item \
<:topic::Databases > Manage Library Databases:>. The effect of these actions \
also can be achieved using normal operating system features for \
copying, moving and deleting files, although directly manipulating \
active database files can leave the client in an inconsistent state. \
For this reason, the menu item dialog is preferred. It provides a \
convenient way to carry out the maintenance tasks. \
For superseded database files \
(see topic <:topic::Library Collections:>), a cleanup option is provided \
to delete all old databases. \
\n\n\
Hypatheon is distributed in several forms, some of which include a \
pre-built database file. When no database is included, \
an empty database file called <:bold::hyp-private.sdb:> is created for you. \
If have no need to index your \
own libraries, you may delete this database. You can always create \
a new empty database later if the need arises. \
\n\n\
By convention, a subdirectory of Hypatheon's <:bold::'data':> directory, \
called <:bold::'base':>, is reserved for storing inactive databases. \
Files in <path>/Hypatheon/data/base will not be opened by the client \
when started up. These files also are available for copying in case \
the user wishes to create a new database by beginning with \
data from a more fundamental set of libraries. For example, \
copying (and renaming) the file hyp-core-6.0.sdb allows new indexing to be \
added to that of the core PVS libraries. This reduces the indexing workload \
for periodic reindexing. It also simplifies the building of a comprehensive \
library collection under a single database file, \
if such an arrangement is desired. \
" ) ,

('Generalized References',
 "The Refs query field allows searches based on the concept of \
<:bold::reference or dependency:>. The basic notion is that of \
declarations such as formulas and functions 'referencing' other \
declarations. This is typified by the important case of a lemma L \
that references a function F, i.e., there is an application of F within \
the body of L. \
\n\n\
To enable advanced queries, \
this relation has been extended across all supported PVS entities \
to create a <:bold::generalized reference relation R:>. \
The notion of 'references' in R is interpreted loosely so as to include \
relations such as 'depends on', 'imports', \
'contains' or 'is contained by', or a composition of these, \
according to the combination of entities involved. \
Thus, it is possible to find all entities A that reference an \
entity B, where the exact meaning of 'reference' \
is given by the types of A and B. \
It is also possible to search using the <:bold::inverse of relation R:>. \
\n\n\
A (partial) <:bold::transitive closure R*:> is available as well. \
R* is derived from the indirect importation relation that exists \
among PVS theories. More specifically, if there is a chain of imports \
from theory A to B, then (A,B) is in the relation R*. Combining this \
transitive closure with the containment relations allows R* to apply \
across all entities, although it is currently incomplete because there \
is no closure computed for the reference relation on declarations. \
\n\n\
Query processing is determined by the combination of the result type \
given in the Type field and the reference terms provided in the Refs \
field. Reference terms may be preceded by optional tags that indicate \
the kind of references sought. \
The default result type is 'declaration' and the default reference \
in this case is 'function'. For example, if the query is \
\n\n\
	' ; sqrt ; ; '    (Refs field contains 'sqrt') \
\n\n\
then the results will include all \
declarations that reference functions having 'sqrt' in their names. \
\n\n\
This query could have been expressed equivalently as ' ; func: sqrt ; ; '. \
The tag 'func:' indicates function references. To indicate \
references to constants instead, the query can be formed as \
' ; cons: sqrt ; ; '. The <:bold::general Refs syntax:> is: \
\n\n\
	<ref type>: <term> ... <term>   <ref type>: <terms> ... \
\n\n\
where <ref type> can be any initial prefix of the <:bold::entity type names:>. \
Terms without a preceding <ref type> are interpreted as 'function' when \
the search type is 'declaration', as 'declaration' when the search type \
is 'proof', as 'theory' when the search type \
is 'module', and as 'library' when the search type is 'library'. \
When the search type is 'step', there are no references allowed. \
\n\n\
Reference types may be followed by '*' to indicate that the \
<:bold::transitive closure relation:> should be used. \
For example, ' ; th*: sqrt ; ; th ' \
requests all the theories that directly or indirectly import other \
theories having 'sqrt' in their names. \
\n\n\
The Refs field also can specify that the <:bold::inverse of relation R:> \
should be used. \
This makes it possible to add constraints so that the entities \
sought are bounded from 'above' and 'below' using the relation R. \
The Refs syntax accommodates this as follows: \
\n\n\
	<ref terms> >>> <ref terms> \
\n\n\
where <:bold::'>>>':> is a delimiter symbol that also indicates the direction \
of reference. The syntax for the <ref terms> on both sides of '>>>' \
is the same, namely, term lists preceded by optional type tags. \
The <ref terms> on the right side may be omitted to specify use of \
the inverse relation only. \
\n\n\
The meaning of these constraints is best seen by example. \
Consider the following query: \
\n\n\
	' ; th*: deriv >>> th*: sqrt ; ; th ' \
\n\n\
This query seeks all theories T that fall between \
two constraints drawn from the \
transitive closure of the 'imports' relation. \
In particular, T must directly or indirectly import 'sqrt', and T \
must be directly or indirectly imported by 'deriv'. \
\n\n\
NOTE: The preceding is not yet implemented for some combinations of \
result types and reference types, namely, those that are in different \
major categories such as libraries and modules. \
" ) ,

('Fully Qualified References',
 "The Refs query field allows additional refinements to narrow the \
set of matching declarations. If the search needs to be confined to a \
specific library and theory, the reference terms can be expressed in a \
<:bold::fully qualified form:>, \
consistent with the conventions of the PVS language. \
The fully qualified syntax follows the corresponding PVS notation: \
\n\n\
	<lib term>@<thy term>.<decl term> \
\n\n\
Thus, the reference term ints@gcd.prime stipulates that only declarations \
whose names match 'prime', found in theories whose names match 'gcd', and \
found in libraries whose names match 'ints' will be eligible. \
As usual, wildcards may be used within the individual terms. \
\n\n\
It is also possible to have <:bold::partially qualified:> \
references by omitting one \
or two of the terms. Either symbol '@' or '.' \
may be omitted for a partial qualification. Both symbols are used \
to specify both library and declaration terms \
when the theory term is blank (e.g., ints@.prime). \
In such a case, only the library and declaration components will \
result in constraints being included in the database query. \
\n\n\
As with other search terms, the qualified forms are \
<:bold::unanchored by default:>, \
i.e., the terms will match any identifiers that contain them as substrings. \
To specify an anchored or exact-match search, simply wrap a qualified \
reference term with single or double quotes. \
" ) ,

('Reference Count Queries',
 "Another option possible with the Refs query field is to conduct searches \
that count the number of references to entities in the results. The syntax \
for these types of references is similar to that used for the inverse of \
relation R: \
\n\n\
	<ref terms> >># \
\n\n\
where <:bold::'>>#':> is a delimiter symbol that indicates reference counting. \
Reference terms to the right of this symbol are not meaningful for this \
type of query and will be ignored. \
\n\n\
Results returned for these queries are similar to the others except that \
the <:bold::rank field:> for each named entity contains the reference count. \
The items will be listed in sorted order, with the highest count shown first. \
As an example, the following query \
\n\n\
	' ; proof: factorial >># ; ; step ' \
\n\n\
will find all the steps used in the proofs for declarations matching \
'factorial'. The steps will be rank ordered by their frequency of \
occurrence in the proofs. \
\n\n\
In some cases, the reference counts that are reported should be regarded \
as <:bold::lower bounds:> rather than exact figures. \
When there are multiple references to a declaration name in \
another declaration or a proof, only one will be counted. \
Counts for proof steps, however, should be exact. \
Reference counts are helpful for identifying how many different \
entities make use of a named item. \
They also provide a conservative estimate of total uses. \
" ) ,

('Secondary Text Search',
 "After displaying the text form of a file, you might care to do \
additional searches within that text. Hypatheon offers two methods \
for doing so. On the bar between the two display \
panels are controls for carrying out text search. \
\n\n\
The first mechanism allows you to find all instances \
of the search terms within the file. On the left side of the bar \
you will find the Name \
and Ref terms in bold face. Each of these terms <:bold::acts as a button:>. \
Clicking on one causes the first occurrence of its term to be found and \
highlighted below. Clicking again advances to the next occurrence. \
After each advance, a small display in the upper right corner \
is updated to show occurrence count information. Shift-click invokes \
a backwards search. \
\n\n\
The second mechanism is <:bold::regular-expression:> string searching. \
Sitting above \
the file display panel on the right is a text entry field labeled \
<:bold::'Find':>. \
Typing a search string in this area invokes pattern matching \
as each character is typed. The behavior is similar to that of \
incremental search in Emacs (Ctrl-s). \
\n\n\
After each character is typed, the occurrence display in the \
upper right corner is updated. \
You may stop at any point to visit other occurrences using the \
navigation buttons. Adding to your search string will resume the \
matching process. When a pattern has no matches, the occurrence \
display will show the string '_____' and the pane will be scrolled \
to the end. \
\n\n\
Pattern matching is implemented using Tk's built-in regular expression \
engine, which supports POSIX-style regular expressions (with minor \
variations). Be mindful that when you type \
a meta-character such as '.' or '*', \
what you're typing will not match text literally. \
For example, the pattern 'sqrt.zero' \
matches more strings than 'sqrt.zero' taken literally. \
For the more restricted search, you need to type 'sqrt\\.zero'. \
\n\n\
When an invalid pattern is detected, the string '?????' will appear in \
the occurrence count display. \
The indicator will be restored after a valid pattern is reestablished. \
Some patterns cannot be typed without this happening. For example, \
when entering 'b[aeiou]d' as a pattern, it will be recognized as \
invalid as soon as '[' is typed. After ']' is typed, \
pattern validity will be regained. \
" ) ,

('User Preferences',
 "A small set of user preferences is maintained by the client. \
You may edit these settings as desired, within the constraints \
stipulated in the preferences file. Most preference changes will not take \
effect until the <:bold::next time the client is started:>. \
" ) ,

('Command Line Queries',
 "Besides using the client interface, you also may invoke Hypatheon queries \
from the command line using the \
script <:bold::'hypfind':>, which was copied to your '~/bin' directory during \
installation. Type 'hypfind -h' to display usage information. \
\n\n\
Examples: \
\n\n\
    hypfind card inject\n\
    hypfind 'union; ; finite;'\n\
\n\
Queries spanning multiple categories of search terms can be entered using \
the semicolon-delimited format. \
\n\n\
Results are returned through <:bold::standard output:> in the form of matching \
declarations or other items, printed one per line. \
This allows the usual shell command features \
to be combined with Hypatheon search. For example, using Hypatheon as a \
front-end to <:bold::grep:> is a useful combination: \
\n\n\
    hypfind '; ; min; th' | grep max \
\n\n\
Applications or scripts can use hypfind as a modest API that implements \
limited programmatic access to the database. \
" ) ,

('Client-PVS Operation',
 "Starting Hypatheon from PVS (to run it in PVS client mode) requires a \
simple bootstrapping process. To support this process, the file \
<:bold::'.hypatheon-emacs':> was copied during installation to the user's home \
directory. Then the following two lines were appended to the \
<:bold::.pvsemacs:> file: \
\n\n\
(load-file \"~/.hypatheon-emacs\") \n\
;(start-hypatheon-client)    ;; uncomment for automatic starting \
\n\n\
If there are other actions that need to occur after starting up \
Hypatheon, edit the .pvsemacs file manually as needed. \
\n\n\
The client's interface to PVS is realized using Emacs Lisp features. \
To start the client initially, you must load it using the Emacs command \
<:bold::'M-x start-hypatheon-client':>. \
Doing so causes the client window to be displayed in the upper righthand \
or lefthand \
portion of your screen. \
\n\n\
During the load operation, PVS starts the Hypatheon \
client as a subprocess under the \
main Emacs process. It will terminate when PVS terminates. On occasion, \
though, it might be desirable or necessary to restart only the client while \
keeping PVS intact. The client may be restarted from its File menu if the \
client window is still active. If not, it may be restarted from Emacs \
using the command <:bold::'M-x restart-hypatheon-client':>. \
Use <:bold::'M-x close-hypatheon-client':> to close it without restarting.\
\n\n\
" ) ,

('Implementation Limitations',
 "Users should be aware of certain limitations of the current Hypatheon \
implementation. Some of these will be addressed in future releases. \
\n\n\
 - Hypatheon is intended to work with PVS version 5.0 or higher. \
Earlier versions of PVS will not be supported. \
\n\n\
 - Hypatheon currently works with the Allegro version of PVS. \
It does not yet support the SBCL and CMUCL versions of PVS. \
The search-only configuration is usable for those without an Allegro PVS. \
\n\n\
 - Simultaneous indexing runs should be avoided. \
This applies whether they are initiated from different client instances \
or from the same client. \
\n\n\
 - Running multiple clients from the same Hypatheon setup will work, \
but only one PVS-mode client can run with a given PVS instance. With \
multiple clients, the event log will be reset by each when it starts. \
Bear this in mind when invoking menu item View > Client Event Log. \
\n\n\
 - If a library name appears in more than one directory on PVS_LIBRARY_PATH, \
only the first instance of it will be found and used during indexing. \
\n\n\
 - Because prelude declarations are accessible to all PVS theories without \
IMPORTING directives, Hypatheon databases generally \
will not track references from a user theory to a prelude theory. \
Queries seeking information about \
theory-to-theory references usually return results involving non-prelude \
theories only. A few exceptions exist due to older library theories \
that explicity import prelude theories. \
\n\n\
 - The case-insensitive search style will generate more matches than expected \
when there exist PVS entities whose names differ only by character case \
(e.g., nat_induction vs. NAT_induction). \
\n\n\
 - Underscores in certain SQL query expressions are \
meta-characters that match a single, arbitrary character. \
In most cases, Hypatheon generates SQL queries that avoid this feature; \
'_' in a search term is usually treated as a literal underscore. \
In a few cases, however, Hypatheon will formulate \
SQL queries so that '_' assumes its special wildcard meaning, \
yielding a larger set of matches. All literal '_' cases will be included, \
but additional, unintended matches might show up as well. \
This occurs primarily with 'Path:' terms. \
\n\n\
 - The context menu choices for displaying declaration and proof references \
often will include many items, especially fundamental entities \
from the prelude, that do not appear in the declaration itself. Typically \
these represent implicit dependencies on types and constants needed to make \
a declaration type-correct. \
\n\n\
 - Because of this expansive set of declaration references, \
queries containing Refs terms will often return results where \
the referent terms are absent from the PVS source code for the referring \
items. They arise because of implicit dependencies. \
\n\n\
 - Some performance tuning has been performed, although the more complicated \
queries and certain indexing jobs might still be slow. \
In most cases, indexing speed will be limited by the time PVS needs \
to perform typechecking. \
\n\n\
 - Fonts under some flavors of Linux are suboptimal and could cause \
text to be displayed in inappropriate sizes. The preference setting \
base_font_size can be used to make adjustments. \
\n\n\
 - The Apple-supplied Tcl/Tk versions that ship with OS X have been known \
to have some minor but noticeable bugs in their GUI features. \
If you experience problems along these lines, visit \
http://www.python.org/download/mac/tcltk/ for suggestions of \
alternative versions to install. \
\n\n\
" ) ,

('Usage Suggestions',
 "Here are a few tips for making the most productive use of Hypatheon. \
\n\n\
 - Many users will have no need to index their own libraries. Those who use \
the NASA library distribution and don't create libraries of their own \
can use Hypatheon databases as read-only resources. \
\n\n\
 - If pre-built database files from NASA Langley are used, there should be \
no reason to re-index the core PVS libraries (prelude, finite_sets, \
bitvectors). If such indexing is desired for some reason, \
it is best to begin by indexing the prelude \
into a new database file, then follow it by other libraries. \
\n\n\
 - Each PVS process instance will have its own Client process instance. \
The client will display the PVS Emacs process ID in the title bar of its \
main window. The same is done for the Emacs window, making it possible to \
pair them up. If the Emacs title bar gets overwritten, \
type M-: followed by (emacs-pid) to retrieve the process ID. \
\n\n\
 - Hypatheon has many features that invoke shell scripts whose \
commands take path-name arguments. Some care has been taken to wrap such \
path names in double quotes so the shell will not break them into \
separate names. Nevertheless, it is safer if \
path names contain no embedded blanks. \
We strongly recommend using underscores instead of space characters \
in all directory and file names. \
\n\n\
 - Bear in mind that when the client displays query results, it retrieves \
theory contents from the database. The file modification time \
shown above the displayed theory is the value captured during indexing. \
If a file has been changed since the last time it was indexed, \
the displayed theory could differ \
from the latest version in the library directory. \
When this happens, the notice, *** Latest is newer ***, will be posted \
next to the modification time. \
\n\n\
 - Few preference values should need changing in practice. Font sizes \
might need some attention if any text displays are illegible. \
\n\n\
 - Queries that contain only negative search terms (of any kind) \
will run more slowly because many items in the database will match. \
\n\n\
" ) ,

('Problem Reports',
 "If you experience a problem with Hypatheon, you are \
encouraged to send a report to the development team. \
\n\n\
Contact: \n\n\
    Ben Di Vito \n\
    NASA Langley Research Center \n\
    b.divito@nasa.gov \n\
" ) ,

('To Be Implemented',
 "Here is a partial list of desired future improvements. \
\n\n\
    - Ranking of search results \n\
    - Higher search and indexing speeds \n\
    - API for common operations \n\
    - Support for theory parameters \n\
    - Richer attributes for searching PVS proofs \n\
    - Insertion of IMPORTINGs for discovered lemmas \n\
" ) ,

)  # end of HelpItems
