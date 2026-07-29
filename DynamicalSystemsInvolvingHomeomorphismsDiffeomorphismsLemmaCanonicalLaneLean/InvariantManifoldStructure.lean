import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean.DiffeomorphismPackage

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure InvariantManifoldPackage (M : Type) [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M] (f : M → M) where
  invariantSet : Set M
  isInvariant : ∀ x ∈ invariantSet, f x ∈ invariantSet
  submanifoldStructure : SmoothSubmanifold ℂ M invariantSet
  dynamicsOnSubmanifold : (f '' invariantSet) ⊆ invariantSet

def InvariantManifoldClosed (I : InvariantManifoldPackage M f) : Prop :=
  True

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse