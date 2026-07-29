import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure HomeomorphismSpace where
  carrier : Type u
  topology : TopologicalSpace carrier

structure DiffeomorphismGroup (M : HomeomorphismSpace) where
  maps : M.carrier → M.carrier
  smoothInverse : Prop

structure DynamicalAdmittedObject where
  space : HomeomorphismSpace
  group : DiffeomorphismGroup space
  hasFixedPoint : Prop
  orbitCompact : Prop
  conclusion : hasFixedPoint ∧ orbitCompact

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse