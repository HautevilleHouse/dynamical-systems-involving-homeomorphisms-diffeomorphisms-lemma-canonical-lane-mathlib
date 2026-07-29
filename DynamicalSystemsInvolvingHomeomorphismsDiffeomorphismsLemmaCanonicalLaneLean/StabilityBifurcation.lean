import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemma

structure StabilityBifurcationPackage where
  structuralStability : Prop
  bifurcationCondition : Prop
  persistenceUnderPerturbation : Prop
  genericityResult : Prop
  localStability : Prop

structure StabilityBifurcationEvidence (S : StabilityBifurcationPackage) where
  structuralStabilityClosed : S.structuralStability
  bifurcationConditionClosed : S.bifurcationCondition
  persistenceUnderPerturbationClosed : S.persistenceUnderPerturbation
  genericityResultClosed : S.genericityResult
  localStabilityClosed : S.localStability

def StabilityBifurcationClosed (S : StabilityBifurcationPackage) : Prop :=
  S.structuralStability ∧ S.bifurcationCondition ∧ S.persistenceUnderPerturbation ∧
  S.genericityResult ∧ S.localStability

theorem stability_bifurcation_closed_from_evidence
    (S : StabilityBifurcationPackage) (E : StabilityBifurcationEvidence S) :
    StabilityBifurcationClosed S := by
  exact And.intro E.structuralStabilityClosed
    (And.intro E.bifurcationConditionClosed
      (And.intro E.persistenceUnderPerturbationClosed
        (And.intro E.genericityResultClosed E.localStabilityClosed)))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemma
end HautevilleHouse