import canonicalLaneMathlib.AdmissibleClass
import EcologyParasitismCanonicalLaneLean.EcologyParasitismAdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.transmissionMechanism ∧ A.object.lifeCycleClosed ∧
  A.object.virulenceControlled ∧ A.object.populationDynamicsStable

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse