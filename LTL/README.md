# Linear Temporal Logic (LTL)

This library contains the formalization of the Linear Temporal Logic (LTL).
Both future time and past time LTL operators are included (see [the NuSMV manual](https://nusmv.fbk.eu/NuSMV/userman/v26/nusmv.pdf) for more details).

The future time operators included in this formalization are the following:
- NEXT(f): f holds at the next position
- GLOBALLY(f): from the current point f holds always in the future
- GLOBALLY_BD(f,interval): f always holds in the interval
- FINALLY(f): exists a point in the future in which f holds
- FINALLY_BD(f,interval): exists a point in the interval in which f holds
- UNTIL(f1,f2): f1 has to hold at least until f2 becomes true, which must hold at the current or a future position
- WEAK_UNTIL(f1,f2): f1 has to hold at least until f2 becomes true, if f2 never becomes true, f1 must remain true forever.
- RELEASE(f1,f2): f2 has to be true until and including the point where f1 first becomes true; if f1 never becomes true, f2 must remain true forever.
- STRONG_RELEASE(f1,f2): f2 has to be true until and including the point where f1 first becomes true, which must occur at the current or future position.

The past time operators included in this formalization are the following:
- PREVIOUS(f): f must hold at the previous position
- ZETA(f): f must hold at the previous position or the current position is the first point in time, so no previous time exists
- HISTORICALLY(f): from the current point f holds always in the past
- HISTORICALLY_BD(f,interval): f holds in [t-upperbound(interval),t-lowerbound(interval))] where t is the current position
- ONCE(f): exists a point in the past in which f holds
- ONCE_BD(f,interval): exists a point in [t-upperbound(interval),t-lowerbound(interval))] in which f holds
- SINCE(f1,f2): f1 must hold since, but not including, the point in which f2 is true and f2 must hold at the current or at a past position.
- TRIGGERED(f1,f2): f2 must hold since, and including, the point in which f1 becomes true; if f1 has never been true, f2 must remain true in all previous positions.

The LTL trace semantics is defined in the file LTL_semantics.
This semantics evaluates an LTL formula over a trace of states, where the state type is a parameter of the theory.
The semantic relation is defined with the function semantic_rel(f)(trace)(t) that is satisfied when the formula f holds in the trace at position t.

Several semantics properties and equivalences for the future (resp. past) time operators can be found in LTL_future_prop (resp. LTL_past_prop) file. These properties include basic Boolean manipulations, DeMorgan law, dualities, idempotence, and alternative definitions, among others.

# Contributors
* Esther Conrad, NASA, USA
* [Laura Titolo](https://lauratitolo.github.io/), NIA & NASA, USA

## Maintainer
* [Laura Titolo](https://lauratitolo.github.io/), NIA & NASA, USA

# Dependencies
![dependency graph](./complex_alt.svg "Dependency Graph")