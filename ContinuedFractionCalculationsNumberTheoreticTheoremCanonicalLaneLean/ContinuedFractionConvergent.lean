import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheorem

structure ContinuedFractionConvergent where
  numerator : ℕ
  denominator : ℕ
  value : ℚ
  convergentIndex : ℕ

def convergentClosed (c : ContinuedFractionConvergent) : Prop :=
  c.numerator > 0 ∧ c.denominator > 0 ∧ c.value = (c.numerator : ℚ) / (c.denominator : ℚ)

end ContinuedFractionCalculationsNumberTheoreticTheorem
end HautevilleHouse
