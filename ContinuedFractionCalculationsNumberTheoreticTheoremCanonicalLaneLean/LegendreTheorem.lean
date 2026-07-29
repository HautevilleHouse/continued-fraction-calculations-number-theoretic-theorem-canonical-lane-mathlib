import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean.ContinuedFractionBasic

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure LegendreApproximation where
  fraction : SimpleContinuedFraction
  convergent : Convergent
  errorBound : Prop

def legendreCoefficientBound (f : SimpleContinuedFraction) : Prop :=
  match f with
  | SimpleContinuedFraction.mk a0 qs _ =>
    let maxQ : ℕ := 
      qs.foldl (fun (acc : ℕ) (q : ℤ) => max acc (Int.toNat (q.natAbs))) 0
    in maxQ ≤ 1

theorem legendreTheorem (f : SimpleContinuedFraction) (h : legendreCoefficientBound f) : Prop :=
  ∀ (c : Convergent), c.fraction = f → c.converged

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse