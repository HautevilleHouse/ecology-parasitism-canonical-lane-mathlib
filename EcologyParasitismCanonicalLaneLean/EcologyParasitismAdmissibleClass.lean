import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure ParasitismAdmittedObject where
  hostParasiteSystem : Type u
  transmissionMechanism : Prop
  lifeCycleClosed : Prop
  virulenceControlled : Prop
  populationDynamicsStable : Prop
  conclusion : transmissionMechanism ∧ lifeCycleClosed ∧ virulenceControlled ∧ populationDynamicsStable

structure AdmissibleClass where
  object : ParasitismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.transmissionMechanism ∧ A.object.lifeCycleClosed ∧
   A.object.virulenceControlled ∧ A.object.populationDynamicsStable) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse