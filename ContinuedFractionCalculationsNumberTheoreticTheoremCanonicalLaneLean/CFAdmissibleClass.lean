import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure CFAdmittedObject where
  seq : List ℤ
  repOk : Prop
  coveringProp : Prop
  conclusion : coveringProp

structure CFAdmissibleClass where
  object : CFAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CFAdmissibleClass) : Prop :=
  A.object.coveringProp ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse