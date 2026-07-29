import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure HostParasiteDynamicsPackage where
  transmissionRate : Prop
  virulence : Prop
  hostRecovery : Prop
  parasiteClearance : Prop
  basicReproductiveNumber : Prop

structure HostParasiteDynamicsEvidence (D : HostParasiteDynamicsPackage) where
  transmissionRateClosed : D.transmissionRate
  virulenceClosed : D.virulence
  hostRecoveryClosed : D.hostRecovery
  parasiteClearanceClosed : D.parasiteClearance
  basicReproductiveNumberClosed : D.basicReproductiveNumber

def HostParasiteDynamicsClosed (D : HostParasiteDynamicsPackage) : Prop :=
  D.transmissionRate ∧ D.virulence ∧ D.hostRecovery ∧ D.parasiteClearance ∧ D.basicReproductiveNumber

theorem host_parasite_dynamics_closed_from_evidence
    (D : HostParasiteDynamicsPackage) (E : HostParasiteDynamicsEvidence D) :
    HostParasiteDynamicsClosed D := by
  exact And.intro E.transmissionRateClosed
    (And.intro E.virulenceClosed
      (And.intro E.hostRecoveryClosed
        (And.intro E.parasiteClearanceClosed E.basicReproductiveNumberClosed)))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse
