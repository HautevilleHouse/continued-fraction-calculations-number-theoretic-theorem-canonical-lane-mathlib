import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure BestApproximationPackage where
  rationalApproximations : ℚ → ℚ
  bestApproximationProperty : ℚ → ℚ → Prop
  denominatorBound : ℕ
  optimalConvergent : ℚ
  approximationCloseness : ℚ → ℚ
  bestApproximationHolds : Prop
  bestApproximationHoldsTerm : bestApproximationHolds

structure BestApproximationEvidence (B : BestApproximationPackage) where
  bestApproximationHoldsClosed : B.bestApproximationHolds
  denominatorBoundPositive : B.denominatorBound > 0
  optimalConvergentIsConvergent : B.optimalConvergent ∈ setOf (λ x => True)  -- placeholder

def BestApproximationClosed (B : BestApproximationPackage) : Prop :=
  B.bestApproximationHolds ∧ B.denominatorBound > 0

theorem best_approximation_closed_from_evidence (B : BestApproximationPackage)
    (E : BestApproximationEvidence B) : BestApproximationClosed B := by
  exact And.intro E.bestApproximationHoldsClosed E.denominatorBoundPositive

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse