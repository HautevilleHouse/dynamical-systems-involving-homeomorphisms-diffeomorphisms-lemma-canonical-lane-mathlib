import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Homeomorphism Flow Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure HomeomorphismFlowPackage where
  phaseSpace : Type u
  topology : TopologicalSpace phaseSpace
  timeDomain : Type v
  flowMap : timeDomain → phaseSpace → phaseSpace
  continuous : Prop
  homeomorphismProperty : ∀ t, Homeomorphism (flowMap t) (phaseSpace) (phaseSpace)

def HomeomorphismFlowClosed (H : HomeomorphismFlowPackage) : Prop :=
  H.continuous ∧ (∀ t, Homeomorphism (H.flowMap t) (H.phaseSpace) (H.phaseSpace))

structure HomeomorphismFlowEvidence (H : HomeomorphismFlowPackage) where
  continuousClosed : H.continuous
  homeomorphismPropertyClosed : ∀ t, Homeomorphism (H.flowMap t) (H.phaseSpace) (H.phaseSpace)

theorem homeomorphism_flow_closed_from_evidence (H : HomeomorphismFlowPackage)
    (E : HomeomorphismFlowEvidence H) : HomeomorphismFlowClosed H := by
  exact And.intro E.continuousClosed E.homeomorphismPropertyClosed

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse