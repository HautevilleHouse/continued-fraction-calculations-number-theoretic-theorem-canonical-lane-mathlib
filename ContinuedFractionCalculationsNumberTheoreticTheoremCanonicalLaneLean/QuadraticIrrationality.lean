import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure QuadraticIrrationalityPackage where
  quadraticSurd : ℚ[√d]
  continuedFractionPeriodic : Prop
  periodLength : ℕ
  preperiodLength : ℕ
  isQuadraticIrrational : Prop
  isQuadraticIrrationalTerm : isQuadraticIrrational

structure QuadraticIrrationalityEvidence (Q : QuadraticIrrationalityPackage) where
  continuedFractionPeriodicClosed : Q.continuedFractionPeriodic
  periodLengthPositive : Q.periodLength > 0
  isQuadraticIrrationalClosed : Q.isQuadraticIrrational

def QuadraticIrrationalityClosed (Q : QuadraticIrrationalityPackage) : Prop :=
  Q.continuedFractionPeriodic ∧ Q.periodLength > 0 ∧ Q.isQuadraticIrrational

theorem quadratic_irrationality_closed_from_evidence (Q : QuadraticIrrationalityPackage)
    (E : QuadraticIrrationalityEvidence Q) : QuadraticIrrationalityClosed Q := by
  exact And.intro E.continuedFractionPeriodicClosed (And.intro E.periodLengthPositive E.isQuadraticIrrationalClosed)

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse