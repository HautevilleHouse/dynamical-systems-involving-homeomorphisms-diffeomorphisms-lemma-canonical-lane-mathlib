import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean.InvariantManifold

/-!
# Morse-Smale Dynamics Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure MorseSmaleDynamicsPackage {H : HomeomorphismFlowPackage}
    {D : DiffeomorphismGroupPackage H} {I : InvariantManifoldPackage H D} where
  hyperbolicSet : Set H.phaseSpace
  transversalityCondition : Prop
  MorseSmaleProperty : Prop

def MorseSmaleDynamicsClosed {H : HomeomorphismFlowPackage}
    {D : DiffeomorphismGroupPackage H} {I : InvariantManifoldPackage H D}
    (M : MorseSmaleDynamicsPackage H D I) : Prop :=
  M.hyperbolicSet.Nonempty ∧ M.transversalityCondition ∧ M.MorseSmaleProperty

structure MorseSmaleDynamicsEvidence {H : HomeomorphismFlowPackage}
    {D : DiffeomorphismGroupPackage H} {I : InvariantManifoldPackage H D}
    (M : MorseSmaleDynamicsPackage H D I) where
  hyperbolicSetNonemptyClosed : M.hyperbolicSet.Nonempty
  transversalityConditionClosed : M.transversalityCondition
  MorseSmalePropertyClosed : M.MorseSmaleProperty

theorem morse_smale_dynamics_closed_from_evidence
    {H : HomeomorphismFlowPackage} {D : DiffeomorphismGroupPackage H}
    {I : InvariantManifoldPackage H D} (M : MorseSmaleDynamicsPackage H D I)
    (E : MorseSmaleDynamicsEvidence M) : MorseSmaleDynamicsClosed M := by
  exact And.intro E.hyperbolicSetNonemptyClosed
    (And.intro E.transversalityConditionClosed E.MorseSmalePropertyClosed)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse