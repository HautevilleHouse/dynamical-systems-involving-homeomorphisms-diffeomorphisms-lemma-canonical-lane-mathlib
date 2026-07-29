import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemma

structure HyperbolicityPackage where
  uniformHyperbolicity : Prop
  dominatedSplitting : Prop
  coneCondition : Prop
  asymptoticGrowth : Prop
  discreteSpectrum : Prop

structure HyperbolicityEvidence (H : HyperbolicityPackage) where
  uniformHyperbolicityClosed : H.uniformHyperbolicity
  dominatedSplittingClosed : H.dominatedSplitting
  coneConditionClosed : H.coneCondition
  asymptoticGrowthClosed : H.asymptoticGrowth
  discreteSpectrumClosed : H.discreteSpectrum

def HyperbolicityClosed (H : HyperbolicityPackage) : Prop :=
  H.uniformHyperbolicity ∧ H.dominatedSplitting ∧ H.coneCondition ∧
  H.asymptoticGrowth ∧ H.discreteSpectrum

theorem hyperbolicity_closed_from_evidence
    (H : HyperbolicityPackage) (E : HyperbolicityEvidence H) :
    HyperbolicityClosed H := by
  exact And.intro E.uniformHyperbolicityClosed
    (And.intro E.dominatedSplittingClosed
      (And.intro E.coneConditionClosed
        (And.intro E.asymptoticGrowthClosed E.discreteSpectrumClosed)))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsLemma
end HautevilleHouse