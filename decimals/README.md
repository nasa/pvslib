Decimals
========

**A decimal number parser and formatting package for Common Lisp**


Introduction
------------

This Common Lisp package offers functions for parsing and formatting
decimal numbers. Package's main interface are functions
`parse-decimal-number` and `format-decimal-number`. The former is for
parsing strings for decimal numbers and the latter for pretty-printing
them as strings. See _Interface (API)_ for the full documentation of the
public programming interface. Here are some examples.


### Parsing

    DECIMALS> (parse-decimal-number "0.24")
    6/25


    DECIMALS> (parse-decimal-number "−12,345"
                                    :decimal-separator #\,
                                    :negative-sign #\−)
    -2469/200


### Formatting

    DECIMALS> (format-decimal-number -100/6 :round-magnitude -3)
    "-16.667"
    ("-" "16" "." "667")


    DECIMALS> (loop for e from -5 upto 5
                    do (print (format-decimal-number
                               (expt 10 e) :round-magnitude -5
                               :decimal-separator ","
                               :integer-minimum-width 7
                               :integer-group-separator " "
                               :fractional-minimum-width 7
                               :fractional-group-separator " ")))

    "      0,000 01"
    "      0,000 1 "
    "      0,001   "
    "      0,01    "
    "      0,1     "
    "      1       "
    "     10       "
    "    100       "
    "  1 000       "
    " 10 000       "
    "100 000       "
    NIL


    DECIMALS> (loop for m from -3 upto 3
                    do (print (format-decimal-number
                               2000/3 :round-magnitude m
                               :integer-minimum-width 4
                               :fractional-minimum-width 4)))

    " 666.667"
    " 666.67 "
    " 666.7  "
    " 667    "
    " 670    "
    " 700    "
    "1000    "
    NIL


Author and license
------------------

Author:  Teemu Likonen <<tlikonen@iki.fi>>

PGP: [4E10 55DC 84E9 DFF6 13D7 8557 719D 69D3 2453 9450][PGP]

License: Public domain

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

[PGP]: http://www.iki.fi/tlikonen/pgp-key.asc


Interface (API)
---------------

### Condition: `decimal-parse-error`

Function `parse-decimal-number` signals this condition when it
couldn't parse a decimal number from string.


### Macro: `define-decimal-formatter`

The lambda list:

     (name &body keyword-arguments)

Define a decimal number formatter function to use with the `~/`
directive of `cl:format`. The valid format is this:

    (define-decimal-formatter name
      (:keyword form)
      ...)

_Name_ is the symbol that names the function. _Keyword_ must be a valid
keyword argument for the `format-decimal-number` function (see its
documentation for more information). _Form_ is evaluated and the value
is used with the _keyword_ argument. Macro's side effect is that global
function _name_ is defined. It can be used with the `~/` directive of
`cl:format` function.

Examples:

    (define-decimal-formatter my-formatter
      (:round-magnitude -6)
      (:decimal-separator ",")
      (:integer-group-separator " ")
      (:integer-minimum-width 4)
      (:fractional-group-separator " ")
      (:fractional-minimum-width 10)
      (:show-trailing-zeros t))
    => MY-FORMATTER

    (format nil "~/my-formatter/" 10/6)
    => "   1,666 667  "

    (format nil "~/my-formatter/" 100/8)
    => "  12,500 000  "

The `~/` directive function call can optionally take up to three
arguments to override the defaults:

    ~round-magnitude,integer-minimum-width,fractional-minimum-width/FUNCTION/

For example:

    (format nil "~-2,3,4/my-formatter/" 10/6)
    => "  1,67 "


### Function: `format-decimal-number`

The lambda list:

     (number &key (round-magnitude 0)
      (rounder #'round-half-away-from-zero) (decimal-separator #\.)
      (integer-group-separator nil) (integer-group-digits 3)
      (integer-minimum-width 0) (integer-pad-char #\ )
      (fractional-group-separator nil) (fractional-group-digits 3)
      (fractional-minimum-width 0) (fractional-pad-char #\ )
      (show-trailing-zeros nil) (positive-sign nil) (negative-sign #\-)
      (zero-sign nil))

Apply specified decimal number formatting rules to _number_ and
return a formatted string.

The second return value is (almost) the same formatted string divided
into four strings. It's a list of four strings: sign, integer part,
decimal separator and fractional part. Formatting arguments
_integer-minimum-width_ and _fractional-minimum-width_ do not apply to
the second return value. Everything else does.

_Number_ must be of type `real`. This function uses `rational` types
internally. If the given _number_ is a `float` it is first turned into
`rational` by calling `cl:rational`.

Formatting rules are specified with keyword arguments, as described
below. The default value is in parentheses.

  * `round-magnitude (0)`

    This is the order of magnitude used for rounding. The value must be
    an integer and it is interpreted as a power of 10.

  * `show-trailing-zeros (nil)`

    If the value is non-nil print all trailing zeros in fractional part.
    Examples:

        (format-decimal-number 1/5 :round-magnitude -3
                               :show-trailing-zeros nil)
        => "0.2"

        (format-decimal-number 1/5 :round-magnitude -3
                               :show-trailing-zeros t)
        => "0.200"

  * `rounder (#'round-half-away-from-zero)`

    The value must be a function (or a symbol naming a function). It is
    used to round the number to the specified round magnitude. The
    function must work like `cl:truncate`, `cl:floor`, `cl:ceiling` and
    `cl:round`, that is, take two arguments, a number and a divisor, and
    return the quotient as the first value.

    This package introduces another rounding function,
    `round-half-away-from-zero`, which is used by default. See its
    documentation for more information.

  * `decimal-separator (#\.)`

    If the value is non-nil the `princ` output of the value will be
    added between integer and fractional parts. Probably the most useful
    types are `character` and `string`.

  * `integer-group-separator    (nil)`
  * `fractional-group-separator (nil)`

    If the value is non-nil the digits in integer or fractional parts
    are put in groups. The `princ` output of the value will be added
    between digit groups.

  * `integer-group-digits    (3)`
  * `fractional-group-digits (3)`

    The value is a positive integer defining the number of digits in
    groups.

  * `integer-minimum-width    (0)`
  * `fractional-minimum-width (0)`

    Format integer or fractional part using minimum of this amount of
    characters, possibly using some padding characters (see below).
    _positive-sign_, _negative-sign_ or _zero-sign_ (see below) is
    included when calculating the width of the integer part. Similarly
    _decimal-separator_ is included when calculating the width of the
    fractional part.

  * `integer-pad-char    (#\Space)`
  * `fractional-pad-char (#\Space)`

    The value is the padding character which is used to fill
    _integer-minimum-width_ or _fractional-minimum-width_.

  * `positive-sign (nil)`
  * `negative-sign (#\-)`
  * `zero-sign     (nil)`

    If values are non-nil these are used as the leading sign for
    positive, negative and zero numbers. The `princ` output of the value
    is used.


### Function: `parse-decimal-number`

The lambda list:

     (string &key (decimal-separator #\.) (positive-sign #\+)
             (negative-sign #\-) (start 0) (end nil))

Examine _string_ (or its substring from _start_ to _end_) for a
decimal number. Assume that the decimal number is exact and return it as
a rational number.

Rules for parsing: First all leading and trailing `#\Space` characters
are stripped. The resulting string may start with a _positive-sign_ or a
_negative-sign_ character. The latter causes this function to assume a
negative number. The following characters in the string must include one
or more digit characters and it may include one _decimal-separator_
character which separates integer and fractional parts. All other
characters are illegal. If these rules are not met a
`decimal-parse-error` condition is signaled.

Examples:

    (parse-decimal-number "0.2")  => 1/5
    (parse-decimal-number ".2")   => 1/5
    (parse-decimal-number "+3.")  => 3
    (parse-decimal-number " -7 ") => -7

    (parse-decimal-number "−12,345"
                          :decimal-separator #\,
                          :negative-sign #\−)
    => -2469/200


### Function: `round-half-away-from-zero`

The lambda list:

     (number &optional (divisor 1))

Divide _number_ by _divisor_ and round the result to the nearest integer.
If the result is half-way between two integers round away from zero. Two
values are returned: quotient and remainder.

This is similar to `cl:round` function except that `cl:round` rounds to
an even integer when number is exactly between two integers. Examples:

    (round-half-away-from-zero 3/2) => 2, -1/2
    (round 3/2)                     => 2, -1/2

    (round-half-away-from-zero 5/2) => 3, -1/2
    (round 5/2)                     => 2, 1/2


