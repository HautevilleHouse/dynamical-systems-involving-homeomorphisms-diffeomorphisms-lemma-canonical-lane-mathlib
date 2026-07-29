import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure DiffeomorphismRegularityPackage where
  sourceManifold : Type u
  targetManifold : Type v
  differentiableStructure : Prop
  smoothnessClass : Nat
  diffeomorphismExists : Prop
  inverseDifferentiable : Prop

def DiffeomorphismRegularityClosed (D : DiffeomorphismRegularityPackage) : Prop :=
  D.differentiableStructure ∧ D.diffeomorphismExists ∧ D.inverseDifferentiable

structure DiffeomorphismRegularityEvidence (D : DiffeomorphismRegularityPackage) where
  differentiableStructureClosed : D.differentiableStructure
  diffeomorphismExistsClosed : D.diffeomorphismExists
  inverseDifferentiableClosed : D.inverseDifferentiable

theorem diffeomorphism_regularity_closed_from_evidence
    (D : DiffeomorphismRegularityPackage) (E : DiffeomorphismRegularityEvidence D) :
    DiffeomorphismRegularityClosed D := by
  exact And.intro E.differentiableStructureClosed
    (And.intro E.diffeomorphismExistsClosed E.inverseDifferentiableClosed)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse