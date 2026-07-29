import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure ParasiteHost where
  carrier : Type
  topology : TopologicalSpace carrier

structure ParasiteAdmittedObject where
  host : ParasiteHost
  hostPopulation : Prop
  parasitePresent : Prop
  virulenceModel : Type
  transmissionDynamics : TopologicalSpace virulenceModel
  diseaseOutcome : Prop
  conclusion : diseaseOutcome

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse
