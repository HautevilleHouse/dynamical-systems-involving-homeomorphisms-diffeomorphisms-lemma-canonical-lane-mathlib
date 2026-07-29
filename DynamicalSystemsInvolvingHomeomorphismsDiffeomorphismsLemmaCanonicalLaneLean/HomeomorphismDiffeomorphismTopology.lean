import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure HomeomorphismDiffeomorphismPackage where
  sourceManifold : Type u
  targetManifold : Type v
  topologySource : TopologicalSpace sourceManifold
  topologyTarget : TopologicalSpace targetManifold
  homeomorphismExists : sourceManifold ≃ₜ targetManifold
  diffeomorphismExists : sourceManifold ≃ targetManifold
  homeomorphismToDiffeomorphismCompatible : Prop

structure HomeomorphismDiffeomorphismEvidence (H : HomeomorphismDiffeomorphismPackage) where
  homeomorphismExistsClosed : H.homeomorphismExists
  diffeomorphismExistsClosed : H.diffeomorphismExists
  homeomorphismToDiffeomorphismCompatibleClosed : H.homeomorphismToDiffeomorphismCompatible

def HomeomorphismDiffeomorphismClosed (H : HomeomorphismDiffeomorphismPackage) : Prop :=
  H.homeomorphismExists ∧ H.diffeomorphismExists ∧ H.homeomorphismToDiffeomorphismCompatible

theorem homeomorphism_diffeomorphism_closed_from_evidence
    (H : HomeomorphismDiffeomorphismPackage) (E : HomeomorphismDiffeomorphismEvidence H) :
    HomeomorphismDiffeomorphismClosed H := by
  exact And.intro E.homeomorphismExistsClosed
    (And.intro E.diffeomorphismExistsClosed E.homeomorphismToDiffeomorphismCompatibleClosed)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse