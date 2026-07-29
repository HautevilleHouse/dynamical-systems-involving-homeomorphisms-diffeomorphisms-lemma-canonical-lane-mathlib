import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure InvariantManifoldPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  dynamics : M → M
  fixedPoint : M
  stableManifold : Set M
  unstableManifold : Set M
  centerManifold : Set M
  stableInvariant : Prop
  unstableInvariant : Prop
  centerInvariant : Prop
  stableSmooth : Prop
  unstableSmooth : Prop
  centerSmooth : Prop

structure InvariantManifoldEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (I : InvariantManifoldPackage M) where
  stableInvariantClosed : I.stableInvariant
  unstableInvariantClosed : I.unstableInvariant
  centerInvariantClosed : I.centerInvariant
  stableSmoothClosed : I.stableSmooth
  unstableSmoothClosed : I.unstableSmooth
  centerSmoothClosed : I.centerSmooth

def InvariantManifoldClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (I : InvariantManifoldPackage M) : Prop :=
  I.stableInvariant ∧ I.unstableInvariant ∧ I.centerInvariant ∧
  I.stableSmooth ∧ I.unstableSmooth ∧ I.centerSmooth

theorem invariant_manifold_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (I : InvariantManifoldPackage M) (E : InvariantManifoldEvidence I) :
    InvariantManifoldClosed I := by
  exact And.intro E.stableInvariantClosed
    (And.intro E.unstableInvariantClosed
      (And.intro E.centerInvariantClosed
        (And.intro E.stableSmoothClosed
          (And.intro E.unstableSmoothClosed E.centerSmoothClosed))))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse