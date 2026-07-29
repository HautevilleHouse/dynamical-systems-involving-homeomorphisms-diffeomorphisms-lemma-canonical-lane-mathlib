import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure DiffeomorphismGroupAction (M : Type u) [TopologicalSpace M] [Group G] where
  action : G → M ≃ M
  smoothAction : Prop
  continuityAction : Prop
  faithfulAction : Prop
  smoothActionClosed : smoothAction
  continuityActionClosed : continuityAction
  faithfulActionClosed : faithfulAction

structure DiffeomorphismGroupActionEvidence {M : Type u} [TopologicalSpace M] [Group G]
    (A : DiffeomorphismGroupAction M G) where
  smoothActionClosed : A.smoothAction
  continuityActionClosed : A.continuityAction
  faithfulActionClosed : A.faithfulAction

def DiffeomorphismGroupActionClosed {M : Type u} [TopologicalSpace M] [Group G]
    (A : DiffeomorphismGroupAction M G) : Prop :=
  A.smoothAction ∧ A.continuityAction ∧ A.faithfulAction

theorem diffeomorphism_group_action_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [Group G]
    (A : DiffeomorphismGroupAction M G) (E : DiffeomorphismGroupActionEvidence A) :
    DiffeomorphismGroupActionClosed A := by
  exact And.intro E.smoothActionClosed
    (And.intro E.continuityActionClosed E.faithfulActionClosed)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse