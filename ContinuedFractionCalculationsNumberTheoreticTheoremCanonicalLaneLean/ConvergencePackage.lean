import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure ConvergencePackage where
  sequence : ℕ → ℝ
  limit : ℝ
  convergenceRate : Prop
  errorBound : Prop

structure ConvergenceEvidence (C : ConvergencePackage) where
  convergenceRateClosed : C.convergenceRate
  errorBoundClosed : C.errorBound

def ConvergenceClosed (C : ConvergencePackage) : Prop :=
  C.convergenceRate ∧ C.errorBound

theorem convergence_closed_from_evidence (C : ConvergencePackage) (E : ConvergenceEvidence C) : ConvergenceClosed C := by
  exact And.intro E.convergenceRateClosed E.errorBoundClosed

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse