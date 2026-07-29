import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure TransmissionModelPackage where
  directTransmission : Prop
  vectorBorneTransmission : Prop
  environmentalTransmission : Prop
  basicReproductiveNumber : Prop

structure TransmissionModelEvidence (T : TransmissionModelPackage) where
  directTransmissionClosed : T.directTransmission
  vectorBorneTransmissionClosed : T.vectorBorneTransmission
  environmentalTransmissionClosed : T.environmentalTransmission
  basicReproductiveNumberClosed : T.basicReproductiveNumber

def TransmissionModelClosed (T : TransmissionModelPackage) : Prop :=
  T.directTransmission ∧ T.vectorBorneTransmission ∧
  T.environmentalTransmission ∧ T.basicReproductiveNumber

theorem transmission_model_closed_from_evidence
    (T : TransmissionModelPackage) (E : TransmissionModelEvidence T) :
    TransmissionModelClosed T := by
  exact And.intro E.directTransmissionClosed
    (And.intro E.vectorBorneTransmissionClosed
      (And.intro E.environmentalTransmissionClosed E.basicReproductiveNumberClosed))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse