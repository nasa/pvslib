---
name: nasalib-proof-repair
description: |
  Prove NASALib libraries in batch and repair broken PVS proofs, one library at a time, in
  nasalib.all order. Use this skill when the user asks to prove NASALib (or some libraries),
  to fix unfinished or "proved - incomplete" proofs, to commit finished libraries, or to
  diagnose why proofs broke after a PVS change. It uses a batch workflow: proveit traces,
  structural edits of .prf files, and short trial runs.
---

# NASALib proof repair

This skill records the workflow and the lessons of a session that proved NASALib from `ints` to `pvsio_utils/PVSioRegex` with PVS 8.1 (October 2026). It fixed proofs in `affine_arith`, `Bernstein`, `Sturm`, `Tarski`, `digraphs`, `graphs`, and `pvsio_utils/PVSioPEG`.

## Rules from the user

Obey these rules. They have priority over the rest of this skill.

1. Do not commit unless the user asks for commits. Never push.
2. Commit one library per commit, in `nasalib.all` order. Commit a library only when all its formulas are proved and complete. Include the library directory (without its sub-libraries), `summaries/<lib>.summary`, and `summaries/<lib>.dep`. Do not include other staged files.
3. You can change `.pvs` files to add type information (for example, a type on a LET binding or a stronger return type) or to add new lemmas. Do not commit a `.pvs` change until the user approves it. Show the diff and ask.
4. Never put a `(GRIND)` in a proof if it takes more than 1 minute. To try a step with a time limit, use `(apply <step> :timeout <n>)` in trial runs only. When the step works, save it without `:timeout`.
5. When a proof becomes too complex, stop and report. When a TCC is false or a definition is wrong (for example, a termination measure that does not decrease), stop and report. Do not change the meaning of a definition without the user's decision.
6. Stop at the library that the user names as the limit.

## Workflow

### 1. Prove the libraries

Use `scripts/prove-libs.sh`. It runs `prove-all --do <lib>` for each library after AFTER, checks the summary, commits the library if all checks pass, and stops at the first failure.

```sh
cd nasalib
PVS_DIR=/path/to/PVS COMMIT_TRAILER="Co-Authored-By: ..." \
  .claude/skills/nasalib-proof-repair/scripts/prove-libs.sh AFTER OUTDIR [UNTIL]
```

The script commits. Use it only when the user asked for commits. Otherwise run `PVS_DIR=... ./prove-all --do <lib>` and read `summaries/<lib>.summary`.

Run it in the background and wait for `STOP` or `DONE` in its output. A library can take more than an hour (`float/float_unbounded`, `graphs`).

### 2. Find the failing formulas

Read the summary of the failing library:

```sh
grep -a 'Proof summary\|unfinished\|untried\|unchecked' summaries/<lib>.summary
grep -a -c 'proved - incomplete' summaries/<lib>.summary
```

- **unfinished**: the proof does not close. Go to step 3.
- **proved - incomplete** only (no unfinished formula): a proof depends on a formula that is not proved. Often the dependency is in a library that comes later in `nasalib.all`. For example, `float/float_bounded` imports `float_unbounded@float`. Find the external imports in `summaries/<lib>.dep`. Prove the dependency first with `prove-all` (do not commit it), then run the library again. Commits stay in `nasalib.all` order.

### Check the dependencies of a library

To see which libraries a library depends on (for example, to decide where it goes in `nasalib.all`), run `./typecheck-all --do <lib>` in the NASALib directory. It typechecks the library and writes `summaries/<lib>.dep`, with the imported libraries. A library can only come after all the libraries in its `.dep` file. In PVS builds without the fix, a patch in `pvs-patches/` keeps the typecheck from stopping at `get-referenced-declaration* - no judgement` (see "Known PVS bugs").

### 3. Start a PVS server for the library

Use one dedicated PVS server per library, so that each library starts with a clean slate, and so that trials do not typecheck the library again each time:

```sh
export PVS_DIR=/path/to/PVS NASALIB=/path/to/nasalib
scripts/pvs-server.sh start nasalib/<lib>     # picks a free port from 23500 up
scripts/srv.sh nasalib/<lib> '(nlp-typecheck "<file>")'
```

Sometimes `pvs-server.sh start` does not return, although the server works. To make sure that the server works, send `scripts/srv.sh nasalib/<lib> '(fboundp (quote nlp-try))'`. If the server answers `T`, stop the start script that hangs, and send `nlp-typecheck` as a separate call.

Stop the server when you finish the library (`scripts/pvs-server.sh stop nasalib/<lib>`), before the final `prove-all`. Then start a new server for the next library. A typecheck in the server rewrites `.prf` files in a cosmetic way (`"shostak"` becomes `SHOSTAK`, invalid dependency entries are dropped). That is normal: the final `prove-all` writes the files again.

### 4. Trace the failing formulas

Prove only the failing formulas, with a full trace:

```sh
cd nasalib/<lib>
proveit -l --traces --no-scripts @theory.f1:f2:f3
```

The trace is in `theory.f1:f2:f3.log`. Look for these lines:

```sh
grep -n 'fewer subproofs\|fewer subgoals\|^Postponing\|Error\|No change\|Restoring' theory.*.log
```

- `has fewer subproofs (N) than subgoals (M)`: a step now makes more subgoals. Find the step on the line before (`Rerunning step:`).
- `Postponing <branch>`: a branch that did not close. Read its sequent.
- `Error: No matching instance for <lemma>`: a REWRITE failed (see the catalog).
- `No resolution for x` / `Restoring the state`: a step refers to a name that does not exist (for example, `x` became `x!1`).

The first divergence is the most important. Fix it first, then trace again.

With a server, get the trace of one formula from the server instead:

```sh
scripts/try-proof-srv.sh nasalib/<lib> <theory> <formula> <<< "['(POSTPONE)']"
```

This reruns the stored proof steps that you give, and prints the end of the trace and the status.

### 5. Find the cause and fix the proof

Use the catalog below. Try each fix on the server with `scripts/try-proof-srv.sh` (seconds per trial), or without a server with `scripts/try-proof.sh` (one proveit run per trial). Keep a copy of each `.prf` file before you change it.

- On the server, a proof that works is only in memory. Write it with `scripts/srv.sh nasalib/<lib> '(nlp-save "<theory>")'`.
- Do not edit a `.prf` file on disk while its theory is loaded in the server: the server does not see the change, and `nlp-save` overwrites it. After an edit on disk, run `'(nlp-reload "<libdir>")'`.

### 6. Clean and prove the library again

```sh
cd nasalib/<lib> && proveit --clean-all     # removes .summary, .log, pvsbin, .pvscontext, ...
rm -f *.prf~
cd .. && git status --short <lib>
```

`--clean-all` also removes `orphaned-proofs.prf`. If git tracks that file in the library, restore it with `git checkout`. Then run `prove-all --do <lib>` again. The library is finished only when the summary shows all formulas succeeded, with no `proved - incomplete`.

### 7. Run the regression tests of pvsio_utils

After a fix in `pvsio_utils` or one of its sub-libraries, run all PVSio regression tests before you commit:

```sh
cd nasalib/pvsio_utils/pvsio_examples
PATH=/path/to/PVS:/path/to/nasalib/pvs-scripts:$PATH make pvsio
make clean; rm -f prime-factorization-tests.out
```

Each `pvsio-regression` line must print no diff, and the prime-factorization checker must report `Fails: 0`. `pvsio-regression` compares only the output from the first `<PVSio>` prompt on (`<example>.mold`). The banner in the raw `<example>.out` file is normal. When a change alters the output on purpose, regenerate that gold file with `pvsio-regression <example> --force`, and show the diff to the user.

### 8. Report, then commit when the user asks

Write the commit message by hand when you fixed proofs or changed `.pvs` files. Say which proofs changed and why (see `git log` of `Tarski`, `Sturm`, `Bernstein`, `digraphs` for examples). Then continue with `prove-libs.sh` from that library.

## Catalog of causes and fixes

### TCCs were renumbered

PVS 8.1 generates more TCCs for some declarations. The stored proofs then belong to other TCC numbers. Examples: `Bernstein/multi_polylist.mpprod_rec_TCC*`, `digraphs/digraphs_all_cycles.cac2dac_TCC*`, `digraphs/circuit_decomp_.trunk_decomp_TCC*`.

- Print the TCCs of the declaration with `scripts/print-tccs.sh` and compare them with the old proofs (`git show HEAD:<lib>/<file>.prf`).
- Move each old proof to its new TCC: `prftools.py get` and `prftools.py set`.
- Prove the new TCCs.
- When many TCCs moved, use `scripts/match-tcc-proofs.sh` with a copy of the old `.prf` file. It tries every candidate proof on every unproved TCC.

### A step makes more subgoals than before

Steps such as `INST?`, `INST`, `DECOMPOSE-EQUALITY`, `REWRITE`, `NAME`, `CASE`, `USE`, `TYPEPRED`, and `BDDSIMP` can now generate TCC subgoals.

- Wrap the step in `WITH-TCCS`: `(WITH-TCCS (INST -1 "i"))`, `(WITH-TCCS (TYPEPRED "x"))`. The TCC becomes a hypothesis, and the subgoal count stays the same. This is the first thing to try when `TYPEPRED` makes more subgoals than the original proof.
- Or add a branch for each new subgoal: `prftools.py set-children`.
- The rerun gives the stored subproofs to the subgoals **by position**, also to a subgoal that closes by itself. When a new subgoal comes first, insert a first branch such as `["(PROPAX)"]`, and relabel the old branches (`set-children` relabels for you). Example: `graphs/complem.t_close_TCC1` (`BDDSIMP`).
- Many new subgoals in `digraphs` were the trivial TCC `FORALL (vc: ...): vert(G)(vc`v)`. For many trivial TCCs of one kind, use auto-fix (see Tools).

### A step makes fewer subgoals than before

The rerun also gives the stored subproofs by position when a step makes fewer subgoals. For example, a step made 2 subgoals and now makes 1. Then the remaining subgoal gets the first stored subproof, and that subproof can be the obsolete one.

- Find which stored subproof belongs to the remaining subgoal. Keep that subproof, and remove the other one.
- Example: `dL/dL_LTL_examples/return_to_safe_temporal_example.return_to_Csr`. The inner `DL-GROUND` made 2 subgoals with PVS 7.1, and makes 1 with PVS 8.1. The new auto-rewrites remove the subgoal that `(ASSERT) (GRIND)` closed. The fix keeps the second branch.

### A REWRITE has no matching instance

- Most often a LET binding has an imprecise inferred type. Give the binding a type in the `.pvs` file: `LET x: [nat->int] = ...` (needs the user's approval). Example: `Tarski/hutch.pvs`.
- Check the direction of the lemma. `card_1_has_1` is `card(S) >= 1 IFF (EXISTS x: S(x))`. To rewrite an `EXISTS` goal, use `(REWRITE "card_1_has_1" :DIR RL)` (`graphs/subtrees.max_tree_all_verts`).
- The lemma has type parameters that do not match: give them explicitly, for example `(LEMMA "lex2_generic[nat,[nat,PEGex[AST]]].lt_lex2_wf")`.

### ASSERT does not use a fact that is in the sequent

- Two occurrences of one term can have different types (see "Known PVS bug" below). ASSERT treats them as different terms.
- Replace with the equation explicitly: `(REPLACE -n)`, `(REPLACE -n :DIR RL)`, or `(NAME-REPLACE "x" "<term>")`. An equation `current_pos(s1) = current_pos(s2)` does not give `current_pos(s1)`nxt_pos = current_pos(s2)`nxt_pos` to ASSERT. Replace first.
- ASSERT does not split a conjunction in the consequent. Use `(GROUND)` (for example for `a <= x <= b`).
- `(USE "lemma")` leaves an implication. `(ASSERT -1)` often does not simplify it. Use `(SPLIT -1)` and close the side goals.

### A LET binding or a NAME has a type that is not precise enough

- Since PVS commit `85fbcec0`, a numeral has the candidate type `real` during typechecking. A LET binding without a type, a record literal, or an `IF` with a numeral can get the type `real` or `numfield`. Add the type: `LET thisdeg: nat = ...`, `(IF ... ENDIF)::nat` (for example, in a MEASURE).
- `NAME "x" "<expr>"` gives `x` the type of the expression. If later steps need a subtype, write `(NAME "x" "<expr> :: T")` and prove the new TCC of the NAME (`digraphs/circuit_decomp_.shrink_repeat`).

### A name in a proof step does not uniquely resolve

The trace shows `<name> does not uniquely resolve - one of: ...` and then `Restoring the state.`. A server trial (`nlp-try`) stops the whole rerun at this step.

- Write the theory actuals in the step text. In `dL_Liveness_examples/dubins_ex` (`S1_is_a_staging_set`, `S2_is_a_staging_set`), `deriv(LAMBDA (xx: (D)): fs(0)(xx), c)` got the candidates `derivatives_def[nzreal]` and `derivatives_def[real]`. Here `D` is a skolem constant from the ODE semantics. The fix: `deriv[(D)](LAMBDA (xx: (D)): fs(0)(xx), c)`, in every step text of the proof that contains this term.

### Two terms differ only in a type instance

Example: the goal has `length[nat](l)` and a hypothesis has `length[real](l)`. ASSERT and REPLACE treat the two terms as different terms.

- Find the origin of each instance. Follow the term back to the step, the lemma instance, or the literal that introduced it. To print the instance and the type of a term, load `cmp.lisp` and use `(LISP (SHOW-APPS fnum "id"))` or `(LISP (SHOW-NAMES fnum "id"))`.
- Fix the mismatch at that origin. Give the type where the term or the lemma is instantiated:
  - a typed lemma instance: `(LEMMA "length_null[nat]")`
  - a typed term in INST or CASE: `alpha := null[nat]`, not `alpha := null`
  - an explicit actual in the `.pvs` file (rule 3 applies)
- Try `REPLACE` before you change the proof tree. In `bool_expr_SA_props.val_cnst_SA`, `(REPLACE -4 1)` with the hypothesis `length[real](zero_vec(1 + i)) = 1 + i` (from `TYPEPRED`) rewrote `length[nat](zero_vec(1 + i))` in the goal. ASSERT did not use that hypothesis.
- Do not add a helper lemma of the form `f[T1](x) = f[T2](x)`. Such a lemma closes one goal, but the mismatch stays in the sequent, and other branches fail on it again.
- Helper lemmas are useful for other repairs. This rule is only about type mismatches.
- Example: `dL_Liveness_examples/bool_expr_SA_props`. `alpha := null` in an INST got the `list[real]` instance. Each INST with this literal made a TCC "every nat". The fix: `alpha := null[nat]` in the INST term.

### Labels and names

- A formula label written as a symbol (`NEWHIGHNAME`) no longer refers to the label `"newhighname"`. Write the label as a string (`Sturm`).
- `SKEEP*` names a variable `x!1` when `x` is also the name of a declaration (`deck!1` in `PVSioPEG/peg_ast`). Use that name in later steps.
- `USE` with `:SUBST` must give all the variables, or it fails ("Free variables in type ..."). For example, give `G` too.

### ProofLite scripts in example libraries

Most example theories keep their proofs as ProofLite scripts, in `%|-` comments in the `.pvs` file. Their `.prf` files are generated from those scripts. Such a library needs the option `-sf` in `nasalib.all` (for example `Tarski/examples : -sf`). It makes proveit install the scripts and force the proofs. To fix a proof of such a theory, change the `%|-` script in the `.pvs` file, not the `.prf` file.

### Other causes

- A datatype got a new constructor, so `INDUCT` makes more cases (`affine_arith`).
- `SKOLETIN*` can make more subgoals than before.
- An existence TCC `EXISTS (x: below(3)): TRUE`: close it with `(INST 1 "0")` (`Tarski/system_solvers.TQlist_lem`).
- The list of hidden formulas changed, so `(REVEAL -n)` reveals a different formula. Find the hidden formula that the proof needs, and use its new index. In `nominal/aux_first_order_AC_unification.solve_ac_rhs_is_temp`, `(REVEAL -33)` became `(REVEAL -32)`. Make sure that the revealed formula is the intended one.
- New TCCs whose stored proof is only `(SUBTYPE-TCC) (POSTPONE)`: write a real proof. Sometimes the TCC needs a stronger return type, such as `{d: DNF | cons?(d)}` (`Tarski/dnf_polynomials`).

### When to stop

Stop and report to the user when:
- a TCC is false as stated (for example, `mod(i, tab)` with `tab: nat`, where `tab = 0` is possible: `PVSioPEG/pvsio_peg.length_tabstr`)
- a termination measure does not decrease (the old `peg_parse` measure in `PVSioPEG/peg.pvs`)
- a proof needs a new mathematical argument of more than a few steps (ask before you add a lemma, and say what it states)

## Tools

### Scripts (in `scripts/`)

| Script | Use |
|---|---|
| `pvs-server.sh start\|stop\|status LIBDIR` | a dedicated PVS server for one library, on a free port from 23500 up; loads `server-tools.lisp` |
| `srv.sh LIBDIR 'LISP'` | send one Lisp call to the server of LIBDIR, print the result as text |
| `try-proof-srv.sh LIBDIR THEORY FORMULA < LIST` | try a proof on the server (in memory), print the end of the trace and the status |
| `server-tools.lisp` | functions for `srv.sh`: `nlp-typecheck`, `nlp-reload`, `nlp-formulas`, `nlp-status` (status in this session only), `nlp-try`, `nlp-save` |
| `prove-libs.sh AFTER OUTDIR [UNTIL]` | prove libraries in order, commit each passing library, stop at the first failure |
| `prftools.py` | read and edit `.prf` files by structure: `list`, `get`, `show`, `set`, `build`, `nodes`, `set-children`, `merge` |
| `prf-scripts.py FILE.prf` | print one line for each entry of a `.prf` file: the formula name and its default script, in upper case and without spaces. It reads the old and the new `.prf` format. Use it to compare the entry lists and the scripts of two versions of a file |
| `try-proof.sh LIBDIR THEORY FORMULA < LIST` | set a proof (a Python list of steps) and prove that formula only; print the status and the open goals |
| `print-tccs.sh LIBDIR FILE THEORY SUBSTRING` | print the statements of the formulas whose names contain SUBSTRING |
| `match-tcc-proofs.sh LIBDIR FILE THEORY OLD.prf SUBSTRING` | try every candidate proof from OLD.prf on every unproved matching formula; save what works |

The proof list format of `prftools.py build` and `try-proof.sh` is a list of steps. The last element can be a list of branches:

```sh
scripts/try-proof.sh nasalib/graphs complem t_close_TCC1 <<'EOF'
['(SKOSIMP*)', '(INST 1 "completion(G!1)")', '(BDDSIMP)',
 [['(PROPAX)'], ['(HIDE -1)', '(GROUND)'], ['(HIDE -1)', '(GRIND)']]]
EOF
```

To refer to formulas without numbers, use labels: `(LABEL "srt" -6)`, then `(INST "srt" "i-1" "j-1")`. Labels make branches robust when `CASE` or `USE` shift the formula numbers.

### proveit options

- `-l --traces --no-scripts @theory.f1:f2`: prove only these formulas, with a full trace in `theory.f1:f2.log`.
- `--auto-fix N --default-proof '<step>'`: on each open branch, try the default step, then the proofs of the sibling branches up to distance N. When the formula then proves, proveit saves the repaired proof. Example: `--auto-fix 2 --default-proof '(then (skeep*) (typepred "vc`v") (expand "vert?") (propax))'`.
- `--clean-all`: remove the files of proveit runs in the current directory, and quit.
- `-T` (`--typecheck-only`): typecheck only, do not prove.
- `--generate-top`: write a `top.pvs` that imports all the theories of a library directory that has none (for example `proveit -T --generate-top <dir>`).
- Exit code 142 means that some formulas were not proved.

### Lisp in a PVS session

Run Lisp with `pvs -raw < script.lisp` from the library directory. Start the script with `(pvs::change-workspace "<dir>/" t)` and `(in-package :pvs)`. Useful functions: `typecheck-file`, `get-theory`, `provable-formulas`, `proof-status-string`, `unparse`, `rerun-prove`, `revert-justification`, `save-all-proofs`, `top-translate-to-prove`.

To inspect a sequent inside a proof, add the step `(LISP <form>)` (the form is an s-expression, not a string). `(current-goal *ps*)` is the sequent, and `s-forms` gives its formulas. In this session, a `LISP` step showed that two `tc-eq` occurrences of `sszh`sqdeg` had the types `nat` and `real`, and translated to different symbols.

To test a change to PVS without a rebuild, load a file with the changed `defmethod` before you typecheck.

To limit the time of a Lisp call: `(handler-case (sb-ext:with-timeout 20 (rerun-prove d)) (sb-ext:timeout () nil))`.

### Purge non-default proofs

`proveit` purges non-default proofs by default when it runs on a directory. In Lisp: `(purge-formula-proofs "theory" "formula")` and `(purge-proved-formulas-file "file")`.

## Pitfalls

- **proveit can drop entries from a .prf file.** A run on some formulas (`@theory.f`) can save a `.prf` file without the entries of other declarations. Keep a copy of the `.prf` file before each change. After a series of trials, prove the whole file and compare the formula count with the copy. To restore lost entries, use `prftools.py merge CURRENT COPY OUT --skip '<renumbered TCCs>'`.
- **`prftools.py` cannot read some old-format `.prf` files.** Examples are the `.prf` files of the dL example libraries before PVS 8.1. To compare entry lists, use `scripts/prf-scripts.py`, which reads both formats. If neither tool reads a file, compare the files byte by byte.
- **Edit by structure, not by line numbers.** Line numbers change after each edit and each proveit save. `prftools.py` finds nodes by their step. A step can be broken across lines in the file (`(REWRITE\n "lemma")`), so match whitespace-insensitively.
- **A formula can have several stored proofs.** Change only the default proof (the index after the formula name). `prftools.py` does that.
- **Do not search for proofs with a regular expression on the name.** A name also occurs in the dependency lists of other entries. Use `prftools.py get`.
- **Kill leftover processes.** When a time limit (`perl -e 'alarm N; exec ...'`) stops proveit, its PVS process keeps running. Stop it with `pkill -f 'pvs -raw -E \(proveit\)'`. Do not stop the PVS processes of VS Code.
- **PVS server ports.** VS Code PVS sessions listen on ports 23456 and up (six sessions used 23456 to 23461). `pvs -raw -port N` takes the next free port when N is in use, and prints `Listening on 127.0.0.1:<port>`. Before you send `pvs-cli.sh --port N` commands, check with `lsof -nP -iTCP -sTCP:LISTEN | grep sbcl` and the server log that port N is your server. Otherwise you change the workspace of the user's VS Code session. A server started with `nohup ... &` exits at once, because its REPL reads end-of-file: keep its input open, for example `tail -f /dev/null | pvs -raw -port N &`.
- **Shell traps (zsh).** `set -- $x` does not split words. `echo ====` is an error. `cp` can be `cp -i`: use `command cp -f`. Never remove files with a path built from a variable (`rm -f $D/x`, `rm "$a/x"`): if the variable is empty or wrong, the command removes other files. `cd` into the directory with a literal path, then remove literal relative names, or use `proveit --clean-all`.
- **Wait loops.** A loop that waits on `pgrep -f "<text>"` never ends, because `pgrep -f` also finds the command line of the loop itself. Wait on a marker file or on the PID of the process.

## Known PVS bugs

**A batch run that hangs.** In PVS builds without the fix, a patch in `pvs-patches/` prevents this hang. If a library takes much longer than usual, look at the end of `summaries/<lib>.summary` and `summaries/<lib>.log` for `debugger invoked`. When a `.prf` file refers to a judgement that no longer exists, PVS stops at `(break "get-referenced-declaration* - no judgement")` while it loads the proofs, and the batch run waits forever (since PVS commit `1a274a35`). Stop only the processes of your run, and tell the user. Do not edit the `.prf` file as a workaround: a stale reference is normal after a judgement is removed, and the user wants PVS fixed. The report, an example, and a patch are in the PVS repository, in `bug-reports/missing-judgement-break/`. In October 2026, this stopped `pvsio_utils/PVSioCSV`, because `csv_reader.prf` refers to `substring_lisp_j`.

**NIL entries in the dependency lists of proofs.** PVS writes `NIL` entries in the dependency lists of non-TCC proofs in `.prf` files, when the dependencies of a proof contain skolem constants. In PVS builds without the fix, a patch in `pvs-patches/` prevents this. The report is in `bug-reports/missing-judgement-break/` of the PVS repository. A `.prf` file that loses its `NIL` entries in a run is a normal change.

**Field applications with the wrong type.** Some field applications `r`f` get the type `real` instead of the type of the field. The decision procedures then see two different terms, and ASSERT loses facts. The cause is PVS commit `85fbcec0`. The report, a minimal example, and a proposed fix are in the PVS repository, in `bug-reports/field-application-type/`. Until PVS is fixed, give LET bindings explicit types, or use `REPLACE` in proofs.
