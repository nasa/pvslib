# PVS Advanced Features: Judgements

In PVS, the ability to define predicate subtypes is an incredibly powerful feature, allowing you to express constraints directly in the type system (e.g., a "non-zero real" or a "sorted list"). However, this expressiveness comes at a cost: because typechecking is undecidable, PVS frequently generates **Type Correctness Conditions (TCCs)** to ensure that expressions evaluate to the expected subtypes. 

If an operation is used frequently, proving the same TCCs over and over becomes tedious. **Judgements** provide a mechanism to teach the PVS typechecker new closure properties and subtype relationships. Once a judgement is declared, the typechecker applies this knowledge automatically—even before the associated TCC is proved. The TCC is generated as a proof obligation to ensure the overall logical soundness of the specification, but the type system and the prover's decision procedures utilize the judgement's information immediately, suppressing redundant TCCs.

---

## 1. Types of Judgements

There are two primary categories of judgements in PVS: **Subtype Judgements** and **Constant / Application Judgements**.

### A. Subtype Judgements
A subtype judgement tells the typechecker that one type is a subtype of another, effectively adding a new edge to the typechecker's internal subtype graph.

**Syntax:**
```pvs
JUDGEMENT S SUBTYPE_OF T
```

**Example:**
```pvs
nonzero_real: NONEMPTY_TYPE = {r: real | r /= 0} CONTAINING 1
posrat: NONEMPTY_TYPE = {r: rational | r > 0} CONTAINING 1

% Tell the typechecker that every positive rational is a non-zero real
JUDGEMENT posrat SUBTYPE_OF nonzero_real
```
With this judgement, if you pass a `posrat` to a function (like division `/`) that expects a `nonzero_real`, PVS will silently accept it without generating a TCC.

### B. Constant and Application Judgements
These judgements state that a specific constant, or the result of a function applied to specific argument types, belongs to a more specific subtype than its original declaration implies.

**Syntax:**
```pvs
% For a constant
JUDGEMENT c HAS_TYPE T

% For a function application (closure condition)
JUDGEMENT f(x: T1, y: T2) HAS_TYPE T3
```

**Example:**
```pvs
% The PVS prelude declares + as [real, real -> real].
% We can declare that adding two positive integers yields a positive integer.
JUDGEMENT +(x, y: posint) HAS_TYPE posint
```

---

## 2. Using Judgements to Simplify Datatype Proofs

When working with **Abstract Datatypes** (like lists, trees, or stacks), you frequently define recursive functions that manipulate these structures while preserving certain invariants (subtypes). 

Without judgements, proving properties about these operations requires repeatedly expanding recursive definitions or manually pulling in type predicates (`typepred`) during interactive proofs. Judgements centralize the proof of these invariants into a single TCC, drastically simplifying subsequent datatype proofs.

### The Problem: Datatypes and Lost Type Information
Imagine we have a `stack` datatype and a function that filters out odd numbers, returning a stack of only even numbers.

```pvs
stack[T: TYPE]: DATATYPE
BEGIN
  empty: empty?
  push(top: T, pop: stack): nonempty?
END stack

% Define a subtype of stacks containing only even integers
even_stack: TYPE = {s: stack[int] | every(even?)(s)}

% A recursive function that duplicates the top element if it is even
% (Note: It returns a generic stack[int])
dup_even(s: stack[int]): RECURSIVE stack[int] =
  CASES s OF
    empty: empty,
    push(t, p): IF even?(t) 
                THEN push(t, push(t, dup_even(p)))
                ELSE push(t, dup_even(p))
                ENDIF
  ENDCASES
MEASURE reduce_nat(0, (LAMBDA (t, p, red): red + 1))(s)
```

If we pass an `even_stack` into `dup_even`, it is logically obvious that the output will also be an `even_stack`. However, because `dup_even` is declared to return a generic `stack[int]`, passing `dup_even(my_even_stack)` into another function that strictly expects an `even_stack` will generate a nasty TCC. 

During a proof, you would have to manually set up an induction over the datatype to prove that `dup_even` preserves the `even_stack` property every single time the TCC arises.

### The Solution: Application Judgements on Datatypes

We can solve this globally by writing a judgement:

```pvs
% Declare that dup_even applied to an even_stack yields an even_stack
JUDGEMENT dup_even(s: even_stack) HAS_TYPE even_stack
```

**What happens next?**
1. **TCC Generation:** PVS generates a single TCC obligating you to prove:
   ```pvs
   FORALL (s: even_stack): every(even?)(dup_even(s))
   ```
   You prove this *once* using datatype induction.
   
2. **Automatic Type Resolution:** From now on, whenever the typechecker sees `dup_even(s)` where `s` is known to be an `even_stack`, it automatically assigns it the type `even_stack`. No more TCCs will be generated for this application.

3. **Prover Automation (`assert`):** When conducting proofs about this datatype, the PVS prover's ground decision procedures (invoked via `assert` or `grind`) automatically "know" that `dup_even(s)` satisfies the `every(even?)` predicate. You do not need to manually invoke `typepred` or expand the `dup_even` definition.

### Summary of Benefits for Datatypes
* **Separation of Concerns:** You separate the *definition* of the recursive datatype operation from the *proof of its invariants*.
* **Cleaner Specifications:** You can declare functions with broad, simple types (e.g., `stack[int] -> stack[int]`) and refine their behavior using judgements, rather than cluttering the function signature with complex dependent types.
* **Proof Automation:** By turning structural datatype invariants into judgements, heavy automation commands like `grind` can trivially solve goals that would otherwise require manual induction and instantiation.