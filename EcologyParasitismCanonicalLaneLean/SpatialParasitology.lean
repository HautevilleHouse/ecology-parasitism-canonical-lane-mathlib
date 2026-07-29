import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure SpatialParasitologyPackage (D : HostParasiteDynamicsPackage) where
  landscapeHeterogeneity : Prop
  hostMobility : Prop
  habitatFragmentation : Prop
  metapopulationDynamics : Prop

structure SpatialParasitologyEvidence {D : HostParasiteDynamicsPackage} (S : SpatialParasitologyPackage D) where
  landscapeHeterogeneityClosed : S.landscapeHeterogeneity
  hostMobilityClosed : S.hostMobility
  habitatFragmentationClosed : S.habitatFragmentation
  metapopulationDynamicsClosed : S.metapopulationDynamics

def SpatialParasitologyClosed {D : HostParasiteDynamicsPackage} (S : SpatialParasitologyPackage D) : Prop :=
  S.landscapeHeterogeneity ∧ S.hostMobility ∧ S.habitatFragmentation ∧ S.metapopulationDynamics

theorem spatial_parasitology_closed_from_evidence
    {D : HostParasiteDynamicsPackage} (S : SpatialParasitologyPackage D) (E : SpatialParasitologyEvidence S) :
    SpatialParasitologyClosed S := by
  exact And.intro E.landscapeHeterogeneityClosed
    (And.intro E.hostMobilityClosed
      (And.intro E.habitatFragmentationClosed E.metapopulationDynamicsClosed))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse