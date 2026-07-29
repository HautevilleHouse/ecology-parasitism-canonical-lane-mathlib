import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure ParasiteVirulencePackage where
  virulenceTrait : ℝ
  transmissionBenefit : ℝ → ℝ
  hostMortalityCost : ℝ → ℝ
  optimalVirulence : ℝ
  transmissionBenefitConcave : ∀ x y, x ≤ y → transmissionBenefit x ≤ transmissionBenefit y
  hostMortalityCostConvex : ∀ x y, hostMortalityCost x + hostMortalityCost y ≥ 2 * hostMortalityCost ((x+y)/2)
  optimalVirulenceMaximizes : ∀ v, transmissionBenefit v - hostMortalityCost v ≤ transmissionBenefit optimalVirulence - hostMortalityCost optimalVirulence

structure ParasiteVirulenceEvidence (V : ParasiteVirulencePackage) where
  transmissionBenefitConcaveClosed : V.transmissionBenefitConcave
  hostMortalityCostConvexClosed : V.hostMortalityCostConvex
  optimalVirulenceMaximizesClosed : V.optimalVirulenceMaximizes

def ParasiteVirulenceClosed (V : ParasiteVirulencePackage) : Prop :=
  V.transmissionBenefitConcave ∧ V.hostMortalityCostConvex ∧ V.optimalVirulenceMaximizes

theorem parasite_virulence_closed_from_evidence
    (V : ParasiteVirulencePackage) (E : ParasiteVirulenceEvidence V) :
    ParasiteVirulenceClosed V := by
  exact And.intro E.transmissionBenefitConcaveClosed
    (And.intro E.hostMortalityCostConvexClosed E.optimalVirulenceMaximizesClosed)

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse