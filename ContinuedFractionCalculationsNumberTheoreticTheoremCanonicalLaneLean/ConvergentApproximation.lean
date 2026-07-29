import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure ConvergentApproximationPackage where
  partialQuotients : List ℕ
  convergents : List ℚ
  approximationError : ℚ → ℚ
  errorDecay : Prop
  errorDecayTerm : errorDecay

structure ConvergentApproximationEvidence (C : ConvergentApproximationPackage) where
  partialQuotientsClosed : C.partialQuotients ≠ []
  convergentsNonempty : C.convergents ≠ []
  errorDecayClosed : C.errorDecay

def ConvergentApproximationClosed (C : ConvergentApproximationPackage) : Prop :=
  C.partialQuotients ≠ [] ∧ C.convergents ≠ [] ∧ C.errorDecay

theorem convergent_approximation_closed_from_evidence (C : ConvergentApproximationPackage)
    (E : ConvergentApproximationEvidence C) : ConvergentApproximationClosed C := by
  exact And.intro E.partialQuotientsClosed (And.intro E.convergentsNonempty E.errorDecayClosed)

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse