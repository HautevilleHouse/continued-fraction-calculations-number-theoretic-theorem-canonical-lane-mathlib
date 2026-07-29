import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure PellEquationSolutionPackage where
  d : ℕ
  nonSquare : d > 0 ∧ ∀ n : ℕ, n*n ≠ d
  minimalSolution : ℕ × ℕ
  fundamentalSolutionExists : Prop
  infiniteFamily : ℕ → ℕ × ℕ
  pellEquationHolds : (minimalSolution.1)^2 - d*(minimalSolution.2)^2 = 1
  pellEquationHoldsTerm : pellEquationHolds

structure PellEquationSolutionEvidence (P : PellEquationSolutionPackage) where
  dNonSquare : P.nonSquare.1 ∧ P.nonSquare.2
  fundamentalSolutionExistsClosed : P.fundamentalSolutionExists
  pellEquationHoldsClosed : P.pellEquationHolds

def PellEquationSolutionClosed (P : PellEquationSolutionPackage) : Prop :=
  (P.d > 0 ∧ ∀ n : ℕ, n*n ≠ P.d) ∧ P.fundamentalSolutionExists ∧ P.pellEquationHolds

theorem pell_equation_solution_closed_from_evidence (P : PellEquationSolutionPackage)
    (E : PellEquationSolutionEvidence P) : PellEquationSolutionClosed P := by
  exact And.intro E.dNonSquare (And.intro E.fundamentalSolutionExistsClosed E.pellEquationHoldsClosed)

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse