import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheorem

structure QuadraticIrrationalCycle where
  periodLength : ℕ
  discriminant : ℤ
  cycleClosed : Prop

def cycleClosedFromPeriod (q : QuadraticIrrationalCycle) : Prop :=
  q.cycleClosed ∧ q.periodLength > 0

end ContinuedFractionCalculationsNumberTheoreticTheorem
end HautevilleHouse
