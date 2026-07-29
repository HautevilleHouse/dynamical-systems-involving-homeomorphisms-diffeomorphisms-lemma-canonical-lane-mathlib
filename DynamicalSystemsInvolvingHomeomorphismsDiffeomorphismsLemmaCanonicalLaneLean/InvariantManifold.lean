import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean.DiffeomorphismGroup

/-!
# Invariant Manifold Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure InvariantManifoldPackage {H : HomeomorphismFlowPackage}
    {D : DiffeomorphismGroupPackage H} where
  submanifold : Type u
  embedding : submanifold → H.phaseSpace
  invariantUnderFlow : Prop
  stable : Prop
  unstable : Prop

def InvariantManifoldClosed {H : HomeomorphismFlowPackage}
    {D : DiffeomorphismGroupPackage H} (I : InvariantManifoldPackage H D) : Prop :=
  I.invariantUnderFlow ∧ I.stable ∧ I.unstable

structure InvariantManifoldEvidence {H : HomeomorphismFlowPackage}
    {D : DiffeomorphismGroupPackage H} (I : InvariantManifoldPackage H D) where
  invariantUnderFlowClosed : I.invariantUnderFlow
  stableClosed : I.stable
  unstableClosed : I.unstable

theorem invariant_manifold_closed_from_evidence
    {H : HomeomorphismFlowPackage} {D : DiffeomorphismGroupPackage H}
    (I : InvariantManifoldPackage H D) (E : InvariantManifoldEvidence I) :
    InvariantManifoldClosed I := by
  exact And.intro E.invariantUnderFlowClosed
    (And.intro E.stableClosed E.unstableClosed)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse