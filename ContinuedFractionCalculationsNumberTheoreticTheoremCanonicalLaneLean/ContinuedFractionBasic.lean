import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure SimpleContinuedFraction where
  a0 : ℤ
  partialQuotients : List ℤ
  finite : Prop

structure Convergent where
  fraction : SimpleContinuedFraction
  numerator : ℤ
  denominator : ℤ
  converged : Prop

def convergentSequence (f : SimpleContinuedFraction) : List (ℤ × ℤ) :=
  let rec compute (l : List ℤ) (h k : ℤ) : List (ℤ × ℤ) :=
    match l with
    | [] => [(h, k)]
    | q :: qs =>
      let h' := q * h + (if k = 0 then 1 else 0) -- simplified
      let k' := q * k + 1
      (h, k) :: compute qs h' k'
  in
  match f with
  | SimpleContinuedFraction.mk a0 qs _ =>
    compute qs a0 1

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse