import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  homeomorphismExists : Prop
  diffeomorphismExists : Prop
  conclusion : homeomorphismExists ∧ diffeomorphismExists

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.homeomorphismExists ∧ O.diffeomorphismExists

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse