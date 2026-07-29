import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

def mathlibStatement (a : AdmissibleObject) : Prop :=
  a.conclusion

theorem mathlibStatement_implies_quadraticIrrational (a : AdmissibleObject) : mathlibStatement a → a.quadraticIrrational := by
  intro h
  exact h.1

theorem mathlibStatement_implies_periodicExpansion (a : AdmissibleObject) : mathlibStatement a → a.periodicExpansion := by
  intro h
  exact h.2

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse