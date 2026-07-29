import canonicalLaneMathlib.AdmissibleClass
import EcologyParasitismCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse