import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean

structure QuadraticIrrationalEvidenceTerms (A : AdmissibleObject) where
  minimalPolynomial : ℤ[X]
  polynomialDegree : ℕ
  polynomialDegreeClosed : polynomialDegree = 2

def QuadraticIrrationalEvidenceTerms.fromAdmissibleObject (A : AdmissibleObject) : QuadraticIrrationalEvidenceTerms A := {
  minimalPolynomial := 0
  polynomialDegree := 0
  polynomialDegreeClosed := by
    trivial
}

end ContinuedFractionCalculationsNumberTheoreticTheoremCanonicalLaneLean
end HautevilleHouse