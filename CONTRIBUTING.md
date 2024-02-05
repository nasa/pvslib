# Contributing to NASALib

NASALib is a collective effort by the PVS community and we are happy to receive new contributions.
An acceptable contribution does not have any restriction in size, it can add a few theorems to an existing library or add a collection of new libraries.
What defines a separated library is not always clear, but a necessary condition is that all the theories included in the library should be related to the same conceptual topic.
More importantly, the contributions should be considered fundamental mathematics as it appears in text books and publicly available sources. 
Please note that NASALib is a public repository. Do not contribute copyrighted developments or developments that are restricted for public distribution.
When in doubt, please contact [the maintainers](README.md#maintainers).

We currently prefer to receive contributions as pull-requests to the GitHub repository. 
In case you are not familiar with this procedure, see for example: https://opensource.com/article/19/7/create-pull-request-github.
If you have any question or doubt, please contact [the maintainers](README.md#maintainers).

Please contact [us](README.md#maintainers) before submitting any contribution. 
Unexpected contributions will be considered SPAM and desk rejected. 

When preparing you contributions, please make sure it adheres to the following guidelines.

## Naming Convention

Since we do not currently have a general naming convention in place, we are not enforcing any in particular. Nevertheless, we do encourage coherence. If you are contributing a new library, choose the name convention of your preference and please double check you are respecting it. If you are adding theorems to an existing theory, please try to respect the existing name convention. 

If you need some inspiration about naming conventions, you can see [this style guide on the development of numerical theories](docs/DEVEL-GUIDE.md).

## Theories

Each new theory you are contributing should be contained in its own `.pvs` file, with exactly the same name as the theory. 
Note that the PVS language is case sensitive, but your operating system may not be. 
Please double check that the name of the theory uses the same capitalization as the name of the file. 

## Libraries

If you are contributing a new library, please create a
directory that includes all the PVS theories of your
contribution. The name of that directory is used as the name of the library.
For library names, we prefer lower case except for acronyms, e.g., CCG, and proper names, e.g., Bernstein. Note that valid symbols in PVS name literals are different  from those of your operating system, e.g., the dash symbol '-' is not a valid symbol in PVS's name literals so it cannot be used in library or theory names. 
We reserve the right to change the name of the library or, even, the name of theories, for consistency with other theories.

Append the the name of the contributed libraries at the bottom of the file `nasalib.all`.
Use one line per library.

Every library directory must have a file `top.pvs` which importing (directly or indirectly) all the library theories. 
Include at least the following tags in PVS comments: `@library`, `@description`, `@author`, `@poc`, `@date`, and `@copyleft`.
The copyleft statement should allow us to include your contribution to NASALib. 
Please only contribute libraries that can be considered fundamental research in the public domain.  
**DO NOT** contribute copyrighted material. 

Example:

```
% @library MyLibrary
% @author Joane Doe and John Doe
% @poc j.doe@xyz.com
% @date August 20, 2020
% @copyleft This library is distributed under xyz
top: THEORY
BEGIN
  IMPORTING
    th1, % Theory 1
    th2, % Theory 2
    ...
    thn  % Theory n
END top
```

## Coherence with Existing Libraries

Please, double check you are not inadvertently incorporating lemmas that are already defined in NASALib. For syntax-based search, you can use the PVSCode-PVS search feature (NASA logo at the top right of the active editor panel) or the [`find-all` script](./find-all).

Also, if your contribution happens to include general-use lemmas, please move them to appropriate libraries.

## Validity Check

Make sure that all formulas in you library are proven.
To do this, please run `prove-all` on the libraries that you modified or created NASALib. Include the summaries folder under those libraries in the pull-request. For example, if you modifed/created `<lib1>`, `<lib2>`, and `<lib3>`, type 

```shell
./prove-all -do=<lib1>,<lib2>,<lib3>
```

Don't submit a pull-request unless prove-all reports that all formulas in your contribution are proven. If your contribution includes unproven formulas, we will reject the pull-request and ask you to prove the missing formulas and resubmit.

## Documentation

Create/update the `README.md` file in the library you are adding/modifying.
Add a brief description of the additions in this contribution to the "Highlights" Section and add what you consider important theorems to the "Major theorems" table.

Update also the internal and external dependency graphs.
* You can use the following command to generate the external dependencies graph.
  ```shell
  ./dependency-all -do=<lib1>,<lib2>,<lib3>
  ```
* You can use the following command to generate the internal dependencies graph.
  ```shell
  ./dependency-all -do=<lib1>,<lib2>,<lib3> -zoomed
  ```

Update the README.md at the root, if appropriate, in particular the number of libraries and theorems and the list of contributors. 

Add the `README.md` and the generated graphs to the pull-request.

## Checklist

This checklist summarizes the guidelines above.

- [ ] Check naming coherence.
- [ ] Look for typos, commented-out code, etc.
- [ ] Check coherence with existing libraries.
- [ ] Add the new libraries to `nasalib.all`, if any.
- [ ] Rerun the proofs (`prove-all -do`)
- [ ] Update READMEs
- [ ] Generate dependency graphs (`dependency-all -do` and `dependency-all -zoomed -do`)
- [ ] Include all the changes in just one commit
