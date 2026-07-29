import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure MorseSmaleDynamicalSystemPackage where
  manifold : Type u
  flow : Type v
  fixedPointsHyperbolic : Prop
  periodicOrbitsHyperbolic : Prop
  transversalityCondition : Prop
  noCycleCondition : Prop

def MorseSmaleDynamicalSystemClosed (M : MorseSmaleDynamicalSystemPackage) : Prop :=
  M.fixedPointsHyperbolic ∧ M.periodicOrbitsHyperbolic ∧ M.transversalityCondition ∧ M.noCycleCondition

structure MorseSmaleDynamicalSystemEvidence (M : MorseSmaleDynamicalSystemPackage) where
  fixedPointsHyperbolicClosed : M.fixedPointsHyperbolic
  periodicOrbitsHyperbolicClosed : M.periodicOrbitsHyperbolic
  transversalityConditionClosed : M.transversalityCondition
  noCycleConditionClosed : M.noCycleCondition

theorem morse_smale_dynamical_system_closed_from_evidence
    (M : MorseSmaleDynamicalSystemPackage) (E : MorseSmaleDynamicalSystemEvidence M) :
    MorseSmaleDynamicalSystemClosed M := by
  exact And.intro E.fixedPointsHyperbolicClosed
    (And.intro E.periodicOrbitsHyperbolicClosed
      (And.intro E.transversalityConditionClosed E.noCycleConditionClosed))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse