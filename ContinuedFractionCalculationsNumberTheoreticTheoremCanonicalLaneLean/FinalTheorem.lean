import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

def ConstrainedContinuedFractionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continued_fraction_endgame (A : AdmissibleClass) :
    ConstrainedContinuedFractionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse