# PVSioIndent

This library provides functionalities to generate indented text.

## `pvsio_ident`

An indented text is represented by a the type `IndentedBlock`, which is defined as a list of `IndentedString`s. Each
indented string is composed by an indention level and a string. An indented block can be built using the following operations:

* `empty_block` represents an empty block.
* `istring(str)` builds a block with one string `str`.
* `iformat(fmt,{| x1, .., xn|})` builds a block using a format string and a list of PVS objects `x1`,...,`xn`.  If
`n` is `0`, it can be simply written `iformat(fmt)`. This
function is similar to PVSio's `format`, except that if `fmt` has new line characters, the formatted string is split
into multiple indented strings with the same indentation level.
* `indent(n,<iblk>)`, depending on the sign of `n`, increases or decreases the indentation level of `iblk` by `n`.
* `indent(iblk)`, also written `[| <iblk> |]`, increases indentation level of `iblk` by 1.
* `unindent(iblk)` decreases indentation level of `iblk` by 1.
* `ireset(iblk)` resets indentation level of `iblk` to  initial level.
* `noindent(iblk)` removes indentation level from `iblk` and declares the block as non-indentable, i.e.,
the lines in `iblk` are unaffected by `indent`, `unindent`, and `ireset` commands.
* `iblk1` + `iblk2` concatenates two indented blocks without modifying their indentation level.
* `iprefix(prefix,iblk)`, also written `prefix >> iblk`, prefixes first line in `iblk` with `prefix`. It
does nothing if `iblk` is empty.
* `ipostfix(postfix,iblk)`, also written `iblk >> postfix`, postfixes last line in `iblk` with `postfix`. It
does nothing if `iblk` is empty.

The function `to_string(iblk,str)` produces the string specified by the indented block `iblk`
and the indentation string `str`. Alternatively, `to_string(iblk,n)` produces the
string specified by the indented block `iblk` and the indentation string composed of `n` blank spaces.

For example, the following PVS specification:
```
  python : IndentedBlock =
    iformat("x = int(input(~s))","x? ") +
    istring("if x > 0:") +
    [| noindent("# Non-indented comment") +
       iformat("y = int(input(~s))","y? ") +
       istring("if y > 0:") +
       [|
        % iformat breaks the line into multiple indented strings
        iformat("# Multi-line~%# comment") +
        LET points = (: (0,0), (0,3), (2,1) :) IN
          iformat("points = [~{~a~^,~}]",{| points |}) +
	    % istring doesn't break the line
        istring(format("print(f'''The value of points is:~%{~a}''')","points"))
       |]
    |]
```
produces
```
<PVSio> print(to_string(python,4));
x = int(input("x? "))
if x > 0:
# Non-indented comment
    y = int(input("y? "))
    if y > 0:
        # Multi-line
        # comment
        points = [(0, 0),(0, 3),(2, 1)]
        print(f'''The value of points is:
{points}''')

<PVSio> print(to_string(python,"."));
x = int(input("x? "))
if x > 0:
# Non-indented comment
.y = int(input("y? "))
.if y > 0:
..# Multi-line
..# comment
..points = [(0, 0),(0, 3),(2, 1)]
..print(f'''The value of points is:
{points}''')
```

More examples are provided in [`pvsio_examples/indent_examples.pvs`](../pvsio_examples/indent_examples.pvs).

## Highlights

![dependency graph](./pvsio_utils-PVSioIndent-zoomed.svg "Dependency Graph")

# Contributors
* [César Muñoz](http://shemesh.larc.nasa.gov/people/cam), NASA, USA
* Mariano Moscato, AMA@NASA LaRC, USA

## Maintainer
* [César Muñoz](http://shemesh.larc.nasa.gov/people/cam), NASA, USA

# Dependencies
![dependency graph](./pvsio_utils-PVSioIndent.svg "Dependency Graph")
