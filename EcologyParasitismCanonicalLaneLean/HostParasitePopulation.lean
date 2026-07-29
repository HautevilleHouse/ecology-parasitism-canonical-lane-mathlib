import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure HostParasitePackage where
  hostPopulation : Type u
  parasitePopulation : Type v
  infectionRate : Prop
  recoveryRate : Prop
  carryingCapacity : Prop
  interactionMatrix : Prop
  coexistenceCondition : Prop

structure HostParasiteEvidence (P : HostParasitePackage) where
  infectionRateClosed : P.infectionRate
  recoveryRateClosed : P.recoveryRate
  carryingCapacityClosed : P.carryingCapacity
  interactionMatrixClosed : P.interactionMatrix
  coexistenceConditionClosed : P.coexistenceCondition

def HostParasiteClosed (P : HostParasitePackage) : Prop :=
  P.infectionRate ∧ P.recoveryRate ∧ P.carryingCapacity ∧ P.interactionMatrix ∧ P.coexistenceCondition

theorem host_parasite_closed_from_evidence (P : HostParasitePackage) (E : HostParasiteEvidence P) : HostParasiteClosed P :=
  And.intro E.infectionRateClosed (And.intro E.recoveryRateClosed (And.intro E.carryingCapacityClosed (And.intro E.interactionMatrixClosed E.coexistenceConditionClosed)))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse