import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemma

structure InvariantManifoldPackage where
  stableManifoldExists : Prop
  unstableManifoldExists : Prop
  centerManifoldExists : Prop
  invariantFoliations : Prop
  hyperbolicityCondition : Prop

structure InvariantManifoldEvidence (I : InvariantManifoldPackage) where
  stableManifoldExistsClosed : I.stableManifoldExists
  unstableManifoldExistsClosed : I.unstableManifoldExists
  centerManifoldExistsClosed : I.centerManifoldExists
  invariantFoliationsClosed : I.invariantFoliations
  hyperbolicityConditionClosed : I.hyperbolicityCondition

def InvariantManifoldClosed (I : InvariantManifoldPackage) : Prop :=
  I.stableManifoldExists ∧ I.unstableManifoldExists ∧ I.centerManifoldExists ∧
  I.invariantFoliations ∧ I.hyperbolicityCondition

theorem invariant_manifold_closed_from_evidence
    (I : InvariantManifoldPackage) (E : InvariantManifoldEvidence I) :
    InvariantManifoldClosed I := by
  exact And.intro E.stableManifoldExistsClosed
    (And.intro E.unstableManifoldExistsClosed
      (And.intro E.centerManifoldExistsClosed
        (And.intro E.invariantFoliationsClosed E.hyperbolicityConditionClosed)))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemma
end HautevilleHouse