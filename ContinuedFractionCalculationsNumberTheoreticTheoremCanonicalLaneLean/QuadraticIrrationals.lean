import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean.ContinuedFractionBasic

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure QuadraticIrrational where
  a : ℤ
  b : ℕ
  c : ℤ
  D : ℕ
  discriminant : ℕ
  isReduced : Prop

structure QuadraticIrrationalCF (q : QuadraticIrrational) where
  cf : SimpleContinuedFraction
  periodic : Prop
  prePeriod : ℕ
  period : ℕ
  periodDetected : Prop

def periodLengthBound (q : QuadraticIrrational) : ℕ :=
  q.D

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse