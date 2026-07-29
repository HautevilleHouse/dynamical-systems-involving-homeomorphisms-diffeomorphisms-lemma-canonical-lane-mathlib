import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure HyperbolicDiffeomorphismPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  diffeo : M ≃ M
  diffeoSmooth : Prop
  tangentBundle : Type v
  derivativeAction : tangentBundle → tangentBundle
  hyperbolicSplitting : Prop
  uniformContraction : Prop
  uniformExpansion : Prop
  diffeoSmoothClosed : diffeoSmooth
  hyperbolicSplittingClosed : hyperbolicSplitting
  uniformContractionClosed : uniformContraction
  uniformExpansionClosed : uniformExpansion

structure HyperbolicDiffeomorphismEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (H : HyperbolicDiffeomorphismPackage M) where
  diffeoSmoothClosed : H.diffeoSmooth
  hyperbolicSplittingClosed : H.hyperbolicSplitting
  uniformContractionClosed : H.uniformContraction
  uniformExpansionClosed : H.uniformExpansion

def HyperbolicDiffeomorphismClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (H : HyperbolicDiffeomorphismPackage M) : Prop :=
  H.diffeoSmooth ∧ H.hyperbolicSplitting ∧ H.uniformContraction ∧ H.uniformExpansion

theorem hyperbolic_diffeomorphism_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (H : HyperbolicDiffeomorphismPackage M) (E : HyperbolicDiffeomorphismEvidence H) :
    HyperbolicDiffeomorphismClosed H := by
  exact And.intro E.diffeoSmoothClosed
    (And.intro E.hyperbolicSplittingClosed
      (And.intro E.uniformContractionClosed E.uniformExpansionClosed))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse