import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemma

structure ShadowingLemmaPackage where
  shadowingProperty : Prop
  approximationQuality : Prop
  linearShadowing : Prop
  limitShadowing : Prop
  uniformShadowing : Prop

structure ShadowingLemmaEvidence (S : ShadowingLemmaPackage) where
  shadowingPropertyClosed : S.shadowingProperty
  approximationQualityClosed : S.approximationQuality
  linearShadowingClosed : S.linearShadowing
  limitShadowingClosed : S.limitShadowing
  uniformShadowingClosed : S.uniformShadowing

def ShadowingLemmaClosed (S : ShadowingLemmaPackage) : Prop :=
  S.shadowingProperty ∧ S.approximationQuality ∧ S.linearShadowing ∧
  S.limitShadowing ∧ S.uniformShadowing

theorem shadowing_lemma_closed_from_evidence
    (S : ShadowingLemmaPackage) (E : ShadowingLemmaEvidence S) :
    ShadowingLemmaClosed S := by
  exact And.intro E.shadowingPropertyClosed
    (And.intro E.approximationQualityClosed
      (And.intro E.linearShadowingClosed
        (And.intro E.limitShadowingClosed E.uniformShadowingClosed)))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemma
end HautevilleHouse