import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure NoncollapsingPackage (A : AdmissibleObject) where
  denominatorBound : ℕ
  approximationRate : Prop
  boundWitness : denominatorBound > 0

structure NoncollapsingEvidence {A : AdmissibleObject} (N : NoncollapsingPackage A) where
  approximationRateClosed : N.approximationRate

def NoncollapsingClosed {A : AdmissibleObject} (N : NoncollapsingPackage A) : Prop :=
  N.approximationRate

theorem noncollapsing_closed_from_evidence {A : AdmissibleObject} (N : NoncollapsingPackage A) (E : NoncollapsingEvidence N) : NoncollapsingClosed N := by
  exact E.approximationRateClosed

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse