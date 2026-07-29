import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure HostParasitePopulationPackage where
  hostPopulation : Type u
  parasitePopulation : Type v
  growthRate : Prop
  transmissionRate : Prop
  virulence : Prop
  densityDependence : Prop

structure HostParasitePopulationEvidence (P : HostParasitePopulationPackage) where
  growthRateClosed : P.growthRate
  transmissionRateClosed : P.transmissionRate
  virulenceClosed : P.virulence
  densityDependenceClosed : P.densityDependence

def HostParasitePopulationClosed (P : HostParasitePopulationPackage) : Prop :=
  P.growthRate ∧ P.transmissionRate ∧ P.virulence ∧ P.densityDependence

theorem host_parasite_population_closed_from_evidence
    (P : HostParasitePopulationPackage) (E : HostParasitePopulationEvidence P) :
    HostParasitePopulationClosed P := by
  exact And.intro E.growthRateClosed
    (And.intro E.transmissionRateClosed
      (And.intro E.virulenceClosed E.densityDependenceClosed))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse