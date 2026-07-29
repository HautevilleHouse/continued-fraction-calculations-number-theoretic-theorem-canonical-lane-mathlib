import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheorem

structure DiophantineApproximationRate where
  irrational : ℝ
  bestApproximation : ℚ
  errorBound : ℝ
  approximationClosed : Prop

def approximationRateClosed (d : DiophantineApproximationRate) : Prop :=
  d.errorBound > 0 ∧ d.approximationClosed

end ContinuedFractionCalculationsNumberTheoreticTheorem
end HautevilleHouse
