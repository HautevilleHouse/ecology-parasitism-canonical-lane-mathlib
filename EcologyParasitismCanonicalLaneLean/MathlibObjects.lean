import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure ParasiteHostSystem where
  carrier : Type
  topology : TopologicalSpace carrier

structure ParasiteHostAdmittedObject where
  system : ParasiteHostSystem
  parasiteEstablished : Prop
  hostRegulation : Prop
  concludingState : Type
  concludingTopology : TopologicalSpace concludingState
  outcomeStable : Prop
  conclusion : outcomeStable

def ParasiteHostWitnessClosed (O : ParasiteHostAdmittedObject) : Prop :=
  O.outcomeStable

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse