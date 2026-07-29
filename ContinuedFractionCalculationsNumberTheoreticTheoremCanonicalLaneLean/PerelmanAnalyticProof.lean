import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure QuadraticIrrationalProofCertificate (A : AdmissibleObject) where
  minimalPolynomial : ℤ[X]
  periodicExpansionWitness : A.periodicExpansion
  certificateClosed : A.quadraticIrrational ∧ A.periodicExpansion

theorem quadratic_irrational_certificate_closed (A : AdmissibleObject) (C : QuadraticIrrationalProofCertificate A) : C.certificateClosed := by
  exact C.certificateClosed

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse