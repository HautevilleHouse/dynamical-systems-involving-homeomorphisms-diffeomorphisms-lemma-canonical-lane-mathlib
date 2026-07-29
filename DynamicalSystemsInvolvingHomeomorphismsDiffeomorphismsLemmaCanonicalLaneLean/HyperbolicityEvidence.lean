import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean.InvariantManifoldStructure

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure HyperbolicityPackage (M : Type) [TopologicalSpace M] [ChartedSpace ℂ M] [SmoothManifoldWithCorners ℂ M] (f : M → M) where
  hyperbolicSet : Set M
  tangentBundleSplitting : Prop
  exponentialContraction : Prop
  exponentialExpansion : Prop
  evidence : hyperbolicSet ≠ ∅

def HyperbolicityClosed (H : HyperbolicityPackage M f) : Prop :=
  H.hyperbolicSet ≠ ∅ ∧ H.tangentBundleSplitting ∧ H.exponentialContraction ∧ H.exponentialExpansion

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse