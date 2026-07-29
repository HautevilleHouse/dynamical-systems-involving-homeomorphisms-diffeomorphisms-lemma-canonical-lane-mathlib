import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean.HomeomorphismBase

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure DiffeomorphismObject (M N : Type) [TopologicalSpace M] [TopologicalSpace N] [ChartedSpace ℂ M] [ChartedSpace ℂ N] [SmoothManifoldWithCorners ℂ M] [SmoothManifoldWithCorners ℂ N] where
  toFun : M → N
  invFun : N → M
  leftInv : ∀ x, invFun (toFun x) = x
  rightInv : ∀ y, toFun (invFun y) = y
  smooth_toFun : Smooth I I' toFun
  smooth_invFun : Smooth I' I invFun

def DiffeomorphismClosed (D : DiffeomorphismObject M N) : Prop :=
  True

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse