import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure ConvergentApproximationsPackage {C : AdmissibleClass} where
  nthConvergentDefined : Prop
  bestApproximationProperty : Prop
  continuedFractionExpansionComputed : Prop
  convergentsConvergeToReal : Prop

structure ConvergentApproximationsEvidence {C : AdmissibleClass} (P : ConvergentApproximationsPackage C) where
  nthConvergentDefinedClosed : P.nthConvergentDefined
  bestApproximationPropertyClosed : P.bestApproximationProperty
  continuedFractionExpansionComputedClosed : P.continuedFractionExpansionComputed
  convergentsConvergeToRealClosed : P.convergentsConvergeToReal

def ConvergentApproximationsClosed {C : AdmissibleClass} (P : ConvergentApproximationsPackage C) : Prop :=
  P.nthConvergentDefined ∧ P.bestApproximationProperty ∧
  P.continuedFractionExpansionComputed ∧ P.convergentsConvergeToReal

theorem convergent_approximations_closed_from_evidence {C : AdmissibleClass}
    (P : ConvergentApproximationsPackage C) (E : ConvergentApproximationsEvidence P) :
    ConvergentApproximationsClosed P := by
  exact And.intro E.nthConvergentDefinedClosed
    (And.intro E.bestApproximationPropertyClosed
      (And.intro E.continuedFractionExpansionComputedClosed E.convergentsConvergeToRealClosed))

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse