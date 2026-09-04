# PVS Advanced Features: Theory Interpretations

In PVS, modeling abstract mathematical structures (like groups, rings, or topological spaces) or generic system interfaces often involves using **uninterpreted types and constants**, accompanied by axioms that constrain their behavior. However, relying on axioms is inherently risky: it is easy to accidentally introduce contradictory axioms without noticing, rendering the entire theory logically inconsistent.

**Theory Interpretations** provide a powerful mechanism to guarantee safety. By "interpreting" a generic theory—mapping its uninterpreted types and constants to concrete, well-defined implementations—PVS requires you to prove that your concrete model satisfies the abstract axioms. Successfully interpreting a theory provides a model for it, proving that its axioms are satisfiable and no inconsistencies have been introduced.

---

## 1. The Generic Theory (The Abstraction)

Consider a generic theory defining a mathematical group. It has an uninterpreted type `G`, operations `+` and `-`, and an identity element `0`. It also contains axioms defining how these elements interact.

```pvs
group: THEORY
BEGIN
  G: TYPE+
  +: [G, G -> G]
  0: G
  -: [G -> G]
  
  x, y, z: VAR G
  
  associative_ax: AXIOM FORALL x, y, z: x + (y + z) = (x + y) + z
  identity_ax:    AXIOM FORALL x: x + 0 = x
  inverse_ax:     AXIOM FORALL x: x + -x = 0 AND -x + x = 0
  
  idempotent_is_identity: LEMMA x + x = x => x = 0
END group
```

---

## 2. Applying Interpretations (The `:=` Operator)

To use this theory for a specific algebraic structure, you map the uninterpreted components to concrete ones using the `:=` operator. 

There are two primary ways to interpret a theory in PVS: **Theory Abbreviations** and **Theory Declarations**.

### A. Theory Abbreviations (`AS`)
A theory abbreviation acts like an `IMPORTING` clause where uninterpreted types and constants are treated similarly to formal parameters. It does not create a new nested namespace of declarations, but rather aliases the instantiation.

**Syntax & Example:**
```pvs
group_inst: THEORY
BEGIN
  % Interpret 'G' as integers, and map the group operations to standard integer arithmetic.
  IMPORTING group G := int, + := +, 0 := 0, - := - AS intG
END group_inst
```
*Note: The mapping `+ := +` might look like a symbol mapping to itself, but it is actually a mapping of homonymous symbols. The `+` on the left is the abstract, uninterpreted operator from the `group` theory, while the `+` on the right is the concrete integer addition operator defined in the PVS prelude. They have different semantics.*

When PVS processes this interpretation, it generates **TCCs (Type Correctness Conditions)** requiring you to prove that the standard integer operations satisfy the `associative_ax`, `identity_ax`, and `inverse_ax` defined in the `group` theory. Once imported, you can refer to the theorems using the abbreviation (e.g., `intG.idempotent_is_identity`).

### B. Inline Theory Declarations (`THEORY =`)
An inline theory declaration actually creates a nested, inlined copy of the generic theory within your current theory, with all mappings applied. This is incredibly useful for creating multiple, distinct interpretations within the same file.

**Syntax & Example:**
```pvs
group_inst: THEORY
BEGIN
  % Interpret the group over non-zero reals, where the operation is multiplication.
  realG: THEORY = group G := nzreal, 
                        + := *, 
                        0 := 1, 
                        -(x: nzreal) := 1/x
END group_inst
```

Notice how we mapped the uninterpreted `+` to multiplication `*`, the identity `0` to `1`, and the inverse `-` to the reciprocal function `1/x`. 

Because `realG` is a nested theory, you access its lemmas using dot notation. From outside `group_inst`, you would reference the inverse axiom as:
```pvs
group_inst.realG.inverse_ax
```

---

## 3. Why Use Theory Interpretations?

1. **Ensuring Consistency:** As mentioned, providing a valid interpretation (a model) proves that your abstract axioms are mathematically consistent and do not harbor hidden contradictions.
2. **Mathematical Reusability:** You can prove a lemma *once* in the abstract theory (e.g., `idempotent_is_identity` in the `group` theory). When you interpret the theory for integers (`intG`) and non-zero reals (`realG`), you get that lemma for free for both structures.
3. **Cleaner than Formal Parameters:** While you could pass `G`, `+`, `0`, and `-` as formal parameters to a theory, this becomes incredibly verbose for large mathematical structures. Uninterpreted constants with interpretations provide a much cleaner syntax.
4. **Refinement and Implementation:** Theory interpretations are the standard way in PVS to show that a concrete system implementation (a state machine or code model) correctly refines an abstract system specification. You interpret the abstract states and transitions using the concrete ones, and PVS automatically generates the proof obligations (axioms) to verify the refinement.