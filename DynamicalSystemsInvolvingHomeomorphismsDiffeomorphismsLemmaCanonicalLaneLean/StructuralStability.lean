import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean

structure StructuralStabilityPackage (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  diffeo : M ≃ M
  perturbation : ℝ → (M ≃ M)
  perturbationSmooth : Prop
  conjugacyExists : Prop
  conjugacyHomeomorphism : Prop
  perturbationSmoothClosed : perturbationSmooth
  conjugacyExistsClosed : conjugacyExists
  conjugacyHomeomorphismClosed : conjugacyHomeomorphism

structure StructuralStabilityEvidence {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (S : StructuralStabilityPackage M) where
  perturbationSmoothClosed : S.perturbationSmooth
  conjugacyExistsClosed : S.conjugacyExists
  conjugacyHomeomorphismClosed : S.conjugacyHomeomorphism

def StructuralStabilityClosed {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (S : StructuralStabilityPackage M) : Prop :=
  S.perturbationSmooth ∧ S.conjugacyExists ∧ S.conjugacyHomeomorphism

theorem structural_stability_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [ChartedSpace ℝ M]
    (S : StructuralStabilityPackage M) (E : StructuralStabilityEvidence S) :
    StructuralStabilityClosed S := by
  exact And.intro E.perturbationSmoothClosed
    (And.intro E.conjugacyExistsClosed E.conjugacyHomeomorphismClosed)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemmaCanonicalLaneLean
end HautevilleHouse