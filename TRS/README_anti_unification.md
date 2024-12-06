# Anti-Unification

Anti-unification is the problem of detecting commonalities between terms. Anti-unification algorithms are a core tool for detecting regularities in expressions, a crucial mechanism in developing tools to check plagiarism and commonalities in code and data.  Relevant recent applications include the development of parallel compilers and autocorrection of code. The seminal work on anti-unification was launched by John C. Reynolds and Gordon D. Plotkin at the end of the 1960s ([1,2]). Anti-unification was recently surveyed by David Cerna and Temur Kutsia  [3].

This library contains a syntactic functional algorithm that defines a strategy for applying decomposition, solving, and trivial inference rules.  Although anti-unification has been considered a dual unification problem in several studies, this verification clarifies the different grades of complexity introduced by the necessity of using fresh variables to address anti-unification.


## Contributors
* [Mauricio Ayala-Rincón](https://www.mat.unb.br/ayala/), University of Brasília, Brazil
* Thaynara Arielly de Lima, Universidade Federal de Goias, Brazil
* Maria Julia Dias Lima, Universidade de Brasilia, Brazil
* [Temur Kutsia](https://www3.risc.jku.at/people/tkutsia/), RISC/Johannes Kepler Universitaet Linz, Austria
* Mariano Moscato, AMA Inc., USA


## References

[1] John C. Reynolds. **_Transformational systems and the algebraic structure
of atomic formulas_**. Machine Intell., 5(1):135–151, 1970.

[2] Gordon D. Plotkin. _**A note on inductive generalization**_. Machine Intell.,
5(1):153–163, 1970.

[3] David M. Cerna and Temur Kutsia. _**Anti-unification and generalization:
      A survey**_. In Proceedings of the 32nd Int. Joint Conference on Artificial
      Intelligence, IJCAI, pages 6563–6573. ijcai.org, 2023.
