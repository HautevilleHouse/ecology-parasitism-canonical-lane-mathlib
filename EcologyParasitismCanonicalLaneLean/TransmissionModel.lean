import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure TransmissionModelPackage where
  susceptiblePopulation : Prop
  infectedPopulation : Prop
  exposedPopulation : Prop
  transmissionKernel : Prop
  seasonality : Prop

structure TransmissionModelEvidence (M : TransmissionModelPackage) where
  susceptiblePopulationClosed : M.susceptiblePopulation
  infectedPopulationClosed : M.infectedPopulation
  exposedPopulationClosed : M.exposedPopulation
  transmissionKernelClosed : M.transmissionKernel
  seasonalityClosed : M.seasonality

def TransmissionModelClosed (M : TransmissionModelPackage) : Prop :=
  M.susceptiblePopulation ∧ M.infectedPopulation ∧ M.exposedPopulation ∧ M.transmissionKernel ∧ M.seasonality

theorem transmission_model_closed_from_evidence
    (M : TransmissionModelPackage) (E : TransmissionModelEvidence M) :
    TransmissionModelClosed M := by
  exact And.intro E.susceptiblePopulationClosed
    (And.intro E.infectedPopulationClosed
      (And.intro E.exposedPopulationClosed
        (And.intro E.transmissionKernelClosed E.seasonalityClosed)))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse
