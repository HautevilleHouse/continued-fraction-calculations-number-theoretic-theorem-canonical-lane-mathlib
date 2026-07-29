import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure PeriodicContinuedFractionsPackage {C : AdmissibleClass} where
  purelyPeriodicCharacterized : Prop
  quadraticIrrationalsCorrespondence : Prop
  fundamentalPeriodLengthComputed : Prop
  galoisConjugateRelation : Prop

structure PeriodicContinuedFractionsEvidence {C : AdmissibleClass} (P : PeriodicContinuedFractionsPackage C) where
  purelyPeriodicCharacterizedClosed : P.purelyPeriodicCharacterized
  quadraticIrrationalsCorrespondenceClosed : P.quadraticIrrationalsCorrespondence
  fundamentalPeriodLengthComputedClosed : P.fundamentalPeriodLengthComputed
  galoisConjugateRelationClosed : P.galoisConjugateRelation

def PeriodicContinuedFractionsClosed {C : AdmissibleClass} (P : PeriodicContinuedFractionsPackage C) : Prop :=
  P.purelyPeriodicCharacterized ∧ P.quadraticIrrationalsCorrespondence ∧
  P.fundamentalPeriodLengthComputed ∧ P.galoisConjugateRelation

theorem periodic_continued_fractions_closed_from_evidence {C : AdmissibleClass}
    (P : PeriodicContinuedFractionsPackage C) (E : PeriodicContinuedFractionsEvidence P) :
    PeriodicContinuedFractionsClosed P := by
  exact And.intro E.purelyPeriodicCharacterizedClosed
    (And.intro E.quadraticIrrationalsCorrespondenceClosed
      (And.intro E.fundamentalPeriodLengthComputedClosed E.galoisConjugateRelationClosed))

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse