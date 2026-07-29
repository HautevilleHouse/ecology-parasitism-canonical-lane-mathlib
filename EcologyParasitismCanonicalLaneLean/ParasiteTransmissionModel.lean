import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure ParasiteTransmissionPackage (P : HostParasitePopulationPackage) where
  transmissionKernel : ℝ → ℝ → ℝ
  basicReproductionNumber : ℝ
  transmissionKernelPositive : ∀ x y, transmissionKernel x y ≥ 0
  basicReproductionNumberDefined : basicReproductionNumber = 1.0

structure ParasiteTransmissionEvidence {P : HostParasitePopulationPackage}
    (T : ParasiteTransmissionPackage P) where
  transmissionKernelPositiveClosed : T.transmissionKernelPositive
  basicReproductionNumberDefinedClosed : T.basicReproductionNumberDefined

def ParasiteTransmissionClosed {P : HostParasitePopulationPackage}
    (T : ParasiteTransmissionPackage P) : Prop :=
  T.transmissionKernelPositive ∧ T.basicReproductionNumberDefined

theorem parasite_transmission_closed_from_evidence
    {P : HostParasitePopulationPackage} (T : ParasiteTransmissionPackage P)
    (E : ParasiteTransmissionEvidence T) : ParasiteTransmissionClosed T := by
  exact And.intro E.transmissionKernelPositiveClosed E.basicReproductionNumberDefinedClosed

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse