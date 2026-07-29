import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean.HomeomorphismFlow

/-!
# Diffeomorphism Group Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure DiffeomorphismGroupPackage {H : HomeomorphismFlowPackage} where
  manifold : Type u
  smoothStructure : DifferentiableManifold H.topology
  diffeomorphisms : Set (H.phaseSpace → H.phaseSpace)
  groupStructure : Group (subtype diffeomorphisms)
  smoothAction : Prop

def DiffeomorphismGroupClosed {H : HomeomorphismFlowPackage}
    (D : DiffeomorphismGroupPackage H) : Prop :=
  D.groupStructure ∧ D.smoothAction

structure DiffeomorphismGroupEvidence {H : HomeomorphismFlowPackage}
    (D : DiffeomorphismGroupPackage H) where
  groupStructureClosed : D.groupStructure
  smoothActionClosed : D.smoothAction

theorem diffeomorphism_group_closed_from_evidence
    {H : HomeomorphismFlowPackage} (D : DiffeomorphismGroupPackage H)
    (E : DiffeomorphismGroupEvidence D) : DiffeomorphismGroupClosed D := by
  exact And.intro E.groupStructureClosed E.smoothActionClosed

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse