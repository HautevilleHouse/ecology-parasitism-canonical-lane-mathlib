/-!
# Parasite Load Model Package
-/

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure ParasiteLoadPackage where
  transmissionRate : Prop
  virulence : Prop
  hostRecovery : Prop
  basicReproNumber : Prop
  carryingCapacity : Prop

structure ParasiteLoadEvidence (P : ParasiteLoadPackage) where
  transmissionRateClosed : P.transmissionRate
  virulenceClosed : P.virulence
  hostRecoveryClosed : P.hostRecovery
  basicReproNumberClosed : P.basicReproNumber
  carryingCapacityClosed : P.carryingCapacity

def ParasiteLoadClosed (P : ParasiteLoadPackage) : Prop :=
  P.transmissionRate ∧ P.virulence ∧ P.hostRecovery ∧ P.basicReproNumber ∧ P.carryingCapacity

theorem parasite_load_closed_from_evidence (P : ParasiteLoadPackage)
    (E : ParasiteLoadEvidence P) : ParasiteLoadClosed P := by
  exact And.intro E.transmissionRateClosed
    (And.intro E.virulenceClosed
      (And.intro E.hostRecoveryClosed
        (And.intro E.basicReproNumberClosed E.carryingCapacityClosed)))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse