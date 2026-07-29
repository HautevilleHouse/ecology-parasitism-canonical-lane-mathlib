import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure TransmissionDynamicsPackage where
  susceptibleClass : Type u
  infectedClass : Type v
  recoveredClass : Type w
  transmissionRate : Prop
  recoveryRate : Prop
  basicReproductiveNumber : Prop
  herdImmunityThreshold : Prop

structure TransmissionDynamicsEvidence (T : TransmissionDynamicsPackage) where
  transmissionRateClosed : T.transmissionRate
  recoveryRateClosed : T.recoveryRate
  basicReproductiveNumberClosed : T.basicReproductiveNumber
  herdImmunityThresholdClosed : T.herdImmunityThreshold

def TransmissionDynamicsClosed (T : TransmissionDynamicsPackage) : Prop :=
  T.transmissionRate ∧ T.recoveryRate ∧ T.basicReproductiveNumber ∧ T.herdImmunityThreshold

theorem transmission_dynamics_closed_from_evidence (T : TransmissionDynamicsPackage) (E : TransmissionDynamicsEvidence T) : TransmissionDynamicsClosed T :=
  And.intro E.transmissionRateClosed (And.intro E.recoveryRateClosed (And.intro E.basicReproductiveNumberClosed E.herdImmunityThresholdClosed))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse