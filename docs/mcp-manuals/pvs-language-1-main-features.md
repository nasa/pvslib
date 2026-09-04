# PVS Specification Language: Main Features

**PVS (Prototype Verification System)** is a system for the development and analysis of formal specifications. The PVS specification language is based on simply typed higher-order logic, enriched with features like predicate subtyping, dependent types, and parameterized modules (theories). 

*(**Note on Advanced Resources:** Advanced PVS features—specifically **Judgements** and **Theory Interpretations**—are covered in detail in separate MCP resource documents. Please query the system to access the dedicated markdown files for these advanced topics.)*

---

## 1. Theories (Module System)
A PVS specification consists of a collection of modules called **theories**. Theories provide genericity, reusability, and structuring. 
* **Parameters**: Theories can be parameterized by types, constants, or other theories to create generic schemas.
* **Assuming Part**: You can place constraints (assumptions) on theory parameters using the `ASSUMING` clause.
* **Importing/Exporting**: Theories can build on one another using `IMPORTING` clauses.

```pvs
% A theory parameterized by a nonempty type 'T'
stacks [T: TYPE+] : THEORY
BEGIN
  ASSUMING
    % Assumptions about parameter T would go here
  ENDASSUMING

  % Importing another theory
  IMPORTING finite_sets[T]

  % Theory body goes here
END stacks
```

## 2. Declarations
Entities in PVS are introduced via declarations. 
* **Types**: Introduced with `TYPE` (may be empty) or `TYPE+` / `NONEMPTY_TYPE` (assumed nonempty).
  ```pvs
  color: TYPE = {red, green, blue}
  ```
* **Variables**: Logical variables used in binding expressions (`VAR`).
  ```pvs
  x, y: VAR int
  ```
* **Constants & Functions**: Can be uninterpreted (just a signature) or interpreted (given a body).
  ```pvs
  n: int                             % Uninterpreted constant
  f(x: int): int = x + 1             % Interpreted function
  ```
* **Recursive Definitions**: PVS requires recursive functions to be total. They must be declared with the `RECURSIVE` keyword and provide a `MEASURE` function to prove termination.
  ```pvs
  factorial(x: nat): RECURSIVE nat = 
    IF x = 0 THEN 1 ELSE x * factorial(x - 1) ENDIF
  MEASURE (LAMBDA (x: nat): x)
  ```
  
  > **⚠️ CRITICAL:** Every recursive function in PVS **MUST** include:
  > 1. The `RECURSIVE` keyword in the signature.
  > 2. A `MEASURE` clause at the end of the definition specifying a termination metric.
  > 
  > *Omitting either of these will cause a hard type error in PVS.*

  **Common Mistakes (Wrong vs. Right):**
  
  ```pvs
  % ❌ WRONG: Missing RECURSIVE keyword and MEASURE clause
  len(lst: list[int]): nat =
    CASES lst OF 
      null: 0, 
      cons(h, t): 1 + len(t) 
    ENDCASES
  ```

  ```pvs
  % ✓ CORRECT: Includes both RECURSIVE and MEASURE
  len(lst: list[int]): RECURSIVE nat =
    CASES lst OF 
      null: 0, 
      cons(h, t): 1 + len(t) 
    ENDCASES
  MEASURE lst BY <<  
  % Note: '<<' is the strict subterm relation automatically generated for datatypes
  ```

  **Common `MEASURE` Patterns:**
  Depending on the input types, the `MEASURE` clause takes different forms. The measure function must return a value in a well-founded domain (like `nat` or a datatype subterm).

  * **For Natural Numbers (`nat`):** Use the variable itself.
    ```pvs
    factorial(x: nat): RECURSIVE nat = 
      IF x = 0 THEN 1 ELSE x * factorial(x - 1) ENDIF
    MEASURE x
    ```
  * **For Datatypes (`list`, `tree`, etc.):** Use the variable itself along with the `BY <<` (strict subterm) relation.
    ```pvs
    height(t: tree): RECURSIVE nat =
      CASES t OF 
        empty: 0, 
        node(v, l, r): 1 + max(height(l), height(r)) 
      ENDCASES
    MEASURE t BY <<
    ```
  * **For Multiple Parameters:** The measure must explicitly use a `LAMBDA` or specify the decreasing parameter.
    ```pvs
    ackermann(m, n: nat): RECURSIVE nat =
      IF m = 0 THEN n + 1
      ELSIF n = 0 THEN ackermann(m - 1, 1)
      ELSE ackermann(m - 1, ackermann(m, n - 1))
      ENDIF
    MEASURE lex2(m, n) % Using lexicographic ordering
    ```
* **Inductive / Coinductive Definitions**: Generates least (or greatest) fixed points, automatically providing induction/coinduction schemas.
  ```pvs
  even(n: int): INDUCTIVE bool = 
    n = 0 OR even(n - 2) OR even(n + 2)
  ```
* **Formulas**: Axioms, lemmas, theorems, and obligations are declared using keywords like `AXIOM`, `LEMMA`, `THEOREM`.
  ```pvs
  assoc_ax: AXIOM FORALL (a, b, c: int): (a + b) + c = a + (b + c)
  ```

## 3. The Type System
PVS uses *structural equivalence* rather than name equivalence. Its type system is one of its most powerful features, designed to catch errors via Type Correctness Conditions (TCCs).

### Base Types and Type Constructors
* **Functions**: `[domain -> range]`.
  ```pvs
  is_positive: [int -> bool] = (LAMBDA (x: int): x > 0)
  ```
* **Tuples**: `[t1, t2, ..., tn]`. Accessed via backtick projection `` `1 ``, `` `2 ``.
  ```pvs
  pair: [int, bool] = (42, TRUE)
  ```
* **Records**: `[# field1: t1, field2: t2 #]`. Accessed via backtick field name `` `field1 ``.
  ```pvs
  origin: [# x: real, y: real #] = (# x := 0.0, y := 0.0 #)
  ```
* **Cotuples (Sum/Union Types)**: `[t1 + t2]`. Disjoint unions accessed via `IN_1`, `IN_2`, etc.
  ```pvs
  number_or_flag: [int + bool] = IN_1(42)
  ```

### Subtypes
Subtypes are defined by a predicate filtering a supertype. PVS generates TCCs when it cannot automatically prove that a value satisfies the subtype predicate.
```pvs
nonzero_real: NONEMPTY_TYPE = {r: real | r /= 0}
```
*Because division requires a `nonzero_real` as its denominator, dividing by an arbitrary real generates a TCC requiring you to prove the denominator is not zero.*

### Dependent Types
Function, tuple, and record types can have components that depend on earlier components.
```pvs
% The remainder function's range depends on the value of the divisor 'd'
rem: [nat, d: {n: nat | n /= 0} -> {r: nat | r < d}]
```

## 4. Expressions
PVS supports standard logical and arithmetic operators alongside functional programming constructs.

* **Logical & Arithmetic**: `AND`, `OR`, `NOT`, `IMPLIES`, `IFF`, `=`, `/=`, `+`, `-`, `*`, `/`.
  ```pvs
  is_valid: bool = (x > 0 AND y < 10) IMPLIES (x * y < 100)
  ```
* **Binding Expressions**: `FORALL`, `EXISTS`, and `LAMBDA`.
  ```pvs
  all_positive: bool = FORALL (x: nat): x >= 0
  ```
* **LET and WHERE**: Used to define local variables for convenience and readability.
  ```pvs
  % Both expressions evaluate to 6
  result1: int = LET x:int = 2, y:int = x * x IN x + y
  result2: int = x + y WHERE x:int = 2, y:int = x * x
  ```
* **IF-THEN-ELSE**: Standard conditional logic.
  ```pvs
  max(x, y: int): int = 
    IF x > y THEN x ELSE y ENDIF
  ```
* **COND**: A multi-way conditional extension (like a switch/case statement). It requires conditions to be mutually disjoint and fully covering (PVS generates TCCs to ensure you didn't miss a case or create overlapping conditions).
  ```pvs
  sign(x: int): int = 
    COND
      x < 0 -> -1,
      x = 0 ->  0,
      x > 0 ->  1
    ENDCOND
  ```
* **Tables**: PVS has special graphical syntax (`TABLE ... ENDTABLE`) for tabular specifications. Tables are internally translated to `COND` statements, bringing the same rigorous disjointness and coverage TCC checks.
  ```pvs
  % A horizontal 1D table representing the sign function
  sign_table(x: int): int = TABLE
    |[ x < 0 | x = 0 | x > 0 ]|
    |   -1   |   0   |   1   ||
  ENDTABLE
  ```
* **Override Expressions (`WITH`)**: Modifies functions, tuples, or records at specific points without mutating state, returning a fresh copy.
  ```pvs
  r1: [# a: int, b: int #] = (# a := 1, b := 2 #)
  r2: [# a: int, b: int #] = r1 WITH [`a := 99] 
  % r2 evaluates to (# a := 99, b := 2 #)
  ```

## 5. Abstract Datatypes
PVS provides a robust `DATATYPE` mechanism to automatically generate the complex axioms, induction principles, accessors, and recognizers needed for algebraic data structures (like lists, trees, or stacks).

### Defining Datatypes
A datatype is defined by providing a set of constructors along with their associated accessors and recognizer predicates.
```pvs
stack[T: TYPE]: DATATYPE
BEGIN
  empty: empty?
  push(top: T, pop: stack): nonempty?
END stack
```
When this datatype is typechecked, PVS automatically generates several theories containing:
* The uninterpreted type (`stack`).
* Recognizers (`empty?`, `nonempty?`) and Accessors (`top`, `pop`).
* Axioms for extensionality and disjointness.
* `reduce` and `map` combinators.
* Subterm relations (`<<`) and induction schemas (least fixed points).

### Pattern Matching with `CASES`
To safely and destructively access the contents of a datatype, PVS provides the `CASES ... OF` expression. It performs pattern-matching on the constructors. PVS ensures that all cases are covered, generating a TCC if a constructor is missing (unless an `ELSE` clause is provided).
```pvs
is_empty_or_even_top(s: stack[int]): bool =
  CASES s OF
    empty: TRUE,
    push(t, p): (t MOD 2 = 0)
  ENDCASES
```

### Codatatypes (`CODATATYPE`)
While `DATATYPE` is used for finite, well-founded inductive structures (like lists and trees), PVS supports **codatatypes** for modeling potentially infinite data structures (like streams or infinite sequences). 
The syntax is identical to datatypes, except for the `CODATATYPE` keyword:
```pvs
stream[T: TYPE]: CODATATYPE
BEGIN
  empty_stream: empty_stream?
  cons_stream(car: T, cdr: stream): full_stream?
END stream
```
Unlike datatypes, a `CODATATYPE` generates **coinduction** schemes (greatest fixed points) rather than induction schemes. It does not enforce a well-founded subterm relation, which correctly allows the creation and manipulation of infinite nested structures. `CASES` expressions are used on codatatypes exactly as they are on standard datatypes.

## 6. Conversions
Conversions in PVS are functions that the typechecker automatically inserts whenever it encounters a type mismatch. They function similarly to implicit type casting or coercions in programming languages. When the typechecker expects a type `T2` but finds a type `T1`, it will look for a declared conversion of type `[T1 -> T2]` and automatically apply it, preventing a type error and keeping the specification uncluttered.

* **Declaring Conversions**: Conversions are enabled using the `CONVERSION` or `CONVERSION+` keywords. They can be disabled locally using `CONVERSION-`.
* **Built-in Conversions**: The PVS prelude includes several built-in conversions, such as `restrict` (which implicitly restricts the domain of a function so it can be passed where a more specific domain is expected).

**Example:**
```pvs
% A function converting an integer to a boolean
int2bool(x: int): bool = (x /= 0)

% Declare it as a conversion
CONVERSION int2bool

% The expression marked as a formula should have type bool, but here it is an int.
% The typechecker automatically translates this to: int2bool(42)
test_formula: FORMULA 42
```
*Note: PVS also automatically lifts conversions component-wise over tuples, records, and function types. For example, if a conversion between `A` and `B` exists, PVS can automatically convert a tuple `[A, A]` to `[B, B]`.*

## 7. Auto-rewrites
One of the challenges in managing large theories or libraries is conveying how the theory should be used in proofs. **Auto-rewrites** allow the specifier to dictate that certain lemmas or definitions should be automatically applied as rewrite rules by the prover's decision procedures and automation strategies (like `assert`, `grind`, and `simplify-with-rewrites`).

* **Syntax**: Use `AUTO_REWRITE+` to add a name to the auto-rewrite list, and `AUTO_REWRITE-` to remove it.
* **Scope**: Auto-rewrites are collected dynamically when a proof is initiated. If a theory is imported, its active auto-rewrites are imported as well.

**Example:**
```pvs
autorewrites_example: THEORY
BEGIN
  a, b: VAR real
  
  zero_times_ax: LEMMA a * 0 = 0
  
  % Instruct the prover to always apply this lemma automatically
  AUTO_REWRITE+ zero_times_ax

  % Proofs of the following formula will be trivial for commands like 'assert'
  % because the rewrite rule is automatically applied.
  f1: FORMULA (x * 0) + 5 = 5
END autorewrites_example
```

**⚠️ Important Performance Note:** 
While auto-rewrites are highly convenient for automating proofs, **overusing this feature can severely degrade the prover's performance**. Adding too many auto-rewrites—especially those that are complex, recursive, or broadly applicable—can cause automated proof commands (like `assert` or `grind`) to spend excessive time attempting rewrites, and in some cases, it can cause the prover to enter an infinite loop and **fail to terminate**. Use auto-rewrites judiciously for simple, directional simplifications.


## 8. Best Practices for Writing Specifications

When writing PVS specifications, how you structure your abstractions can significantly impact the safety, reusability, and readability of your proofs. 

### Prefer Theory Parameters over Uninterpreted Declarations

When defining a generic mathematical structure or system component, **prefer using theory parameters and `ASSUMING` clauses** instead of uninterpreted types/constants and `AXIOM`s.

**Why?**
1. **Safety and Consistency:** `AXIOM`s are dangerous because introducing a contradictory axiom renders your entire logical system inconsistent (allowing you to prove anything). By using theory parameters and an `ASSUMING` clause, PVS treats the constraints as **assumptions**. When you later instantiate the theory with concrete types and values, PVS automatically generates **Type Correctness Conditions (TCCs)**, forcing you to prove that your concrete model actually satisfies those assumptions.
2. **Reusability:** Parameterized theories can be easily imported and instantiated multiple times with different actual parameters in the same file. 

**Avoid (Axiomatic Approach):**
```pvs
% Risky: Uses uninterpreted constants and axioms
bad_monoid: THEORY
BEGIN
  M: TYPE+
  op: [M, M -> M]
  e: M
  
  % If these axioms contradict, the theory is trivially broken.
  assoc: AXIOM FORALL (x, y, z: M): op(x, op(y, z)) = op(op(x, y), z)
  ident: AXIOM FORALL (x: M): op(e, x) = x AND op(x, e) = x
END bad_monoid
```

**Prefer (Parameterized Approach):**
```pvs
% Safe: Uses theory parameters and assumptions
good_monoid [M: TYPE+, op: [M, M -> M], e: M]: THEORY
BEGIN
  ASSUMING
    % When imported/instantiated, these generate proof obligations (TCCs) 
    % ensuring the provided 'op' and 'e' are consistent.
    assoc: ASSUMPTION FORALL (x, y, z: M): op(x, op(y, z)) = op(op(x, y), z)
    ident: ASSUMPTION FORALL (x: M): op(e, x) = x AND op(x, e) = x
  ENDASSUMING

  % Lemmas and theorems go here
END good_monoid
```

*(Note: If a generic theory is extremely large or complex, uninterpreted declarations might still be used for readability, but they must be carefully mapped to a concrete model using **Theory Interpretations** to guarantee consistency.)*