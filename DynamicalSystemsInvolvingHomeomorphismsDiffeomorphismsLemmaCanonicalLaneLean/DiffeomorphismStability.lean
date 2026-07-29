import canonicalLaneMathlib.AdmissibleClass
import HomeomorphismsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure DiffeomorphismStabilityPackage where
  invariantManifold : Type u
  tangentBundle : Type v
  hyperbolicStructure : Prop
  persistentUnderPerturbation : Prop

structure DiffeomorphismStabilityEvidence (D : DiffeomorphismStabilityPackage) where
  hyperbolicStructureClosed : D.hyperbolicStructure
  persistentUnderPerturbationClosed : D.persistentUnderPerturbation

def DiffeomorphismStabilityClosed (D : DiffeomorphismStabilityPackage) : Prop :=
  D.hyperbolicStructure ∧ D.persistentUnderPerturbation

theorem diffeomorphism_stability_closed_from_evidence
    (D : DiffeomorphismStabilityPackage) (E : DiffeomorphismStabilityEvidence D) :
    DiffeomorphismStabilityClosed D := by
  exact And.intro E.hyperbolicStructureClosed E.persistentUnderPerturbationClosed

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse