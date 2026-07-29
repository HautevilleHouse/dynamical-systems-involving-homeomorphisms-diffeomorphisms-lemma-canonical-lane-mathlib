import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure HomeomorphismClassificationPackage where
  sourceManifold : Type u
  targetManifold : Type v
  homeomorphismExists : Prop
  homotopyEquivalence : Prop
  mappingDegreeCondition : Prop
  orientationPreserving : Prop

def HomeomorphismClassificationClosed (H : HomeomorphismClassificationPackage) : Prop :=
  H.homeomorphismExists ∧ H.homotopyEquivalence ∧ H.mappingDegreeCondition ∧ H.orientationPreserving

structure HomeomorphismClassificationEvidence (H : HomeomorphismClassificationPackage) where
  homeomorphismExistsClosed : H.homeomorphismExists
  homotopyEquivalenceClosed : H.homotopyEquivalence
  mappingDegreeConditionClosed : H.mappingDegreeCondition
  orientationPreservingClosed : H.orientationPreserving

theorem homeomorphism_classification_closed_from_evidence
    (H : HomeomorphismClassificationPackage) (E : HomeomorphismClassificationEvidence H) :
    HomeomorphismClassificationClosed H := by
  exact And.intro E.homeomorphismExistsClosed
    (And.intro E.homotopyEquivalenceClosed
      (And.intro E.mappingDegreeConditionClosed E.orientationPreservingClosed))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse