import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean.HyperbolicityEvidence

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure ConjugacyPackage (M N : Type) [TopologicalSpace M] [TopologicalSpace N] [ChartedSpace ℂ M] [ChartedSpace ℂ N] [SmoothManifoldWithCorners ℂ M] [SmoothManifoldWithCorners ℂ N] (f : M → M) (g : N → N) where
  homeomorphismConjugacy : HomeomorphismObject M N
  conjugacyEquation : homeomorphismConjugacy.toFun ∘ f = g ∘ homeomorphismConjugacy.toFun
  smoothConjugacy : DiffeomorphismObject M N

def ConjugacyClosed (C : ConjugacyPackage M N f g) : Prop :=
  True

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse