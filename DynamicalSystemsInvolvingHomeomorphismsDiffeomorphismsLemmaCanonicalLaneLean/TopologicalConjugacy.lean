import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemma

structure TopologicalConjugacyPackage where
  conjugacyExists : Prop
  conjugacyPreservesOrbitStructure : Prop
  conjugacyContinuity : Prop
  conjugacyStability : Prop
  conjugacyClassification : Prop

structure TopologicalConjugacyEvidence (T : TopologicalConjugacyPackage) where
  conjugacyExistsClosed : T.conjugacyExists
  conjugacyPreservesOrbitStructureClosed : T.conjugacyPreservesOrbitStructure
  conjugacyContinuityClosed : T.conjugacyContinuity
  conjugacyStabilityClosed : T.conjugacyStability
  conjugacyClassificationClosed : T.conjugacyClassification

def TopologicalConjugacyClosed (T : TopologicalConjugacyPackage) : Prop :=
  T.conjugacyExists ∧ T.conjugacyPreservesOrbitStructure ∧ T.conjugacyContinuity ∧
  T.conjugacyStability ∧ T.conjugacyClassification

theorem topological_conjugacy_closed_from_evidence
    (T : TopologicalConjugacyPackage) (E : TopologicalConjugacyEvidence T) :
    TopologicalConjugacyClosed T := by
  exact And.intro E.conjugacyExistsClosed
    (And.intro E.conjugacyPreservesOrbitStructureClosed
      (And.intro E.conjugacyContinuityClosed
        (And.intro E.conjugacyStabilityClosed E.conjugacyClassificationClosed)))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemma
end HautevilleHouse