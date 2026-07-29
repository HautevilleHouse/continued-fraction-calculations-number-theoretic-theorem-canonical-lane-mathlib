import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure ContinuedFractionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuedFractionAdmittedObject where
  space : ContinuedFractionSpace
  continuedFractionExpansionDefined : Prop
  rationalApproximationProperty : Prop
  convergenceRateCondition : Prop
  conclusion : rationalApproximationProperty ∧ convergenceRateCondition

structure ContinuedFractionEndgameState where
  object : ContinuedFractionAdmittedObject

def ContinuedFractionWitnessClosed (O : ContinuedFractionAdmittedObject) : Prop :=
  O.rationalApproximationProperty ∧ O.convergenceRateCondition

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse