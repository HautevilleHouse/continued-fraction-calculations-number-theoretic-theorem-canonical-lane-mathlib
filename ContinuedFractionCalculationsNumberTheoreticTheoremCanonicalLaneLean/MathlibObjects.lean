import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure ContinuedFractionObject where
  rational : ℚ
  continuedFraction : List ℕ
  convergents : List ℚ
  infiniteTail : Bool

structure AdmissibleObject where
  obj : ContinuedFractionObject
  quadraticIrrational : Prop
  periodicExpansion : Prop
  conclusion : quadraticIrrational ∧ periodicExpansion

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse