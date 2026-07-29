import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure QuadraticIrrationalsPackage where
  discriminant : ℤ
  periodicity : Prop
  fundamentalUnit : Prop

structure QuadraticIrrationalsEvidence (Q : QuadraticIrrationalsPackage) where
  periodicityClosed : Q.periodicity
  fundamentalUnitClosed : Q.fundamentalUnit

def QuadraticIrrationalsClosed (Q : QuadraticIrrationalsPackage) : Prop :=
  Q.periodicity ∧ Q.fundamentalUnit

theorem quadratic_irrationals_closed_from_evidence (Q : QuadraticIrrationalsPackage) (E : QuadraticIrrationalsEvidence Q) : QuadraticIrrationalsClosed Q := by
  exact And.intro E.periodicityClosed E.fundamentalUnitClosed

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse