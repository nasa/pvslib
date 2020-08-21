# Developers Guide to NASALib

(From draft originally written by Ricky Butler)

## Naming Conventions

A uniform naming convention can greatly aid the user in remembering the names of lemmas and theorems.

### Functions: Definition and Property

Lemmas should begin with the function name.  The key defining property
should be labeled `_def`.  Although this may be just a duplication
of the body, it is convenient to have a lemma as well.  If there is a 
very common useful rewrite name it `_rew`.  If there is a common
alternate or simpler version name it `_lem`.

| suffix   | meaning  |
| --- | --- |
| `_def`   | definitional  |
| `_lem`   | common simplification of alternate definition |
| `_rew`   | common useful rewrite |

Typical abbreviations include:

| abbreviation | meaning |
| --- | --- |
| `_0`   | value of function at 0 |
| `_eq_0` | function equals 0: `f(x) = 0 IFF ...` |
| `_eq_args` | `f(a,a) = ...` |
| `_neg` | value of function for negated argument `f(-x)` |
| `_plus` | value of function for sum of arguments `f(x+y)` |
| `_plus1` | value of function for `f(x+1)` |
| `_minus` | value of function for difference of arguments `f(x-y)` |
| `_disj`  | disjoint |
| `_dist`  | distributive |
| `_comm` | commutative: `f(a,b) = f(b,a)` |
| `_assoc` | associative: `f(a,f(b,c))) = f(f(a,b),c)` |
| `_sym` | symmetry: `f(-a) = f(a)` |
| `_incr`   | `f(a) <= f(b) IFF a <= b` | 
| `_decr`   | `f(a) >= f(b) IFF a <= b` |
| `_strict_incr`   | `f(a) < f(b) IFF a < b` |
| `_strict_decr`   | `f(a) > f(b) IFF a < b` |
| `_fix_pt`  | value of the defined function is a fixed point |
| `_card`  | cardinality value |
| `_lb`  | lower bound |
| `_ub`  | upper bound |
| `_lub`  | least upper bound |
| `_glb`  | greatest lower bound |

### Inequalities

| suffix   | meaning  |
| --- | --- |
|`_gt_0` | function gt 0: ` ... IMPLIES f(x) > 0` |
|`_ge_0` | function gt 0: ` ... IMPLIES f(x) >= 0` |
|`_lt_0` | function lt 0: ` ... IMPLIES f(x) < 0` |
|`_le_0` | function lt 0: ` ... IMPLIES f(x) <= 0` |

### Types and Constants

| name   | meaning  |
| --- | --- |
| `nz_`   | non zero |
| `zero`  | a constant of the type which is the addition identity |


| suffix   | meaning  |
| --- | --- |
| `_refl` | reflexive: `R(a,a)` |
| `_trans` | transitive: `R(x, y) & R(y, z) => R(x, z)` |
| `_sym`  | symmetry property: ` f(-a) = f(a)` |

### Speculative

| suffix   | meaning  |
| --- | --- |
| `_diff`  | `f(x) - f(y) = ...` |
| `_diff_lt`  | `f(x) - f(y) < ...` |
| `_diff_ge`  | `f(x) - f(y) >= ...` |
| `_scal`  | ` f(a*x) = a * f(x)` |
| `_pos`  | ` ... IMPLIES f(x) > 0` |

## Examples


```
  sqrt_def     : LEMMA sqrt(nnx) * sqrt(nnx) = nnx

  sqrt_lem     : LEMMA sqrt(nny) = nnz IFF nnz * nnz = nny

  sq_rew            : LEMMA a*a = sq(a) 

    
  sin_0        : LEMMA sin(0) = 0

  cos_plus     : LEMMA cos(a + b) = cos(a)*cos(b) - sin(a)*sin(b)

  sin_eq_0     : LEMMA sin(a) = 0 IFF EXISTS (i: int): a = i * pi
                     
  abs_diff     : LEMMA abs(x) - abs(y) <= abs(x - y)
      
  sigma_eq_arg : LEMMA sigma(low, low, F) = F(low)
      
  sq_pos       : LEMMA sq(a) >= 0

  sqrt_newton_ub(a,n)    : posreal = sqrt_newton(a,n)

```

## Theory Names

One theory per file and exactly the same name as the file  (without
the `.pvs` extension). Note that
the PVS language is case sensitive, but the operating systems may not
be. Please double check that the name of the theory uses the same
capitalization as the name of the file.

## Oraganizing Your Contribution

In order to consider your contribution, please create a
directory that includes all the PVS theories of your
contribution. The name of that directory is used as the name of the library.
We reserve the right to change the name of the library or, even, the
name of theories, for consistency with other theories.

Every library directory must have a file `top.pvs` that imports all
the library theories. Include at least the following tags in PVS comments:
`@library`, `@description`, `@author`, `@poc`, `@date`,`@copyless`.
The copyless statement should allow us to include your contribution to
NASALib. Please only contribute libraries that can be considered
fundamental research in the public domain.  **DO NOT** contribute copyrighted material. 

Example:

```
% @library MyLibrary
% @author Joane Doe and John Doe
% @poc j.doe@xyz.com
% @date August 20, 2020
% @copyless This library is distributed under xyz
top: THEORY
BEGIN
  IMPORTING
    th1, % Theory 1
    th2, % Theory 2
    ...
    thn  % Theory n
END top
```

Finally, make sure that all formulas in you library are proven. Use,
for example, `proveit MyLibrary` from the parent directory of
`MyLibrary` and double check that all formulas are reported as proven.

Please contact [us](https://shemesh.larc.nasa.gov/people/cam) before
sending any contribution. Unexpected contributions will be
considered SPAM and immediately deleted. 
