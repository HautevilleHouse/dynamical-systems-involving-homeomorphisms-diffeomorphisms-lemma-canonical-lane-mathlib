import canonicalLaneMathlib.AdmissibleClass
import HomeomorphismsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let obj : DynamicalAdmittedObject := A.object
  obj.hasFixedPoint ∧ obj.orbitCompact

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  let obj : DynamicalAdmittedObject := A.object
  exact obj.conclusion

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse