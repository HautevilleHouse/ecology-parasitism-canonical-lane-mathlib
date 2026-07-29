import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure SpatialEcologyPackage where
  hostDispersal : Prop
  parasiteDispersal : Prop
  patchOccupation : Prop
  landscapeConnectivity : Prop
  metapopulationDynamics : Prop

structure SpatialEcologyEvidence (S : SpatialEcologyPackage) where
  hostDispersalClosed : S.hostDispersal
  parasiteDispersalClosed : S.parasiteDispersal
  patchOccupationClosed : S.patchOccupation
  landscapeConnectivityClosed : S.landscapeConnectivity
  metapopulationDynamicsClosed : S.metapopulationDynamics

def SpatialEcologyClosed (S : SpatialEcologyPackage) : Prop :=
  S.hostDispersal ∧ S.parasiteDispersal ∧ S.patchOccupation ∧ S.landscapeConnectivity ∧ S.metapopulationDynamics

theorem spatial_ecology_closed_from_evidence (S : SpatialEcologyPackage) (E : SpatialEcologyEvidence S) : SpatialEcologyClosed S :=
  And.intro E.hostDispersalClosed (And.intro E.parasiteDispersalClosed (And.intro E.patchOccupationClosed (And.intro E.landscapeConnectivityClosed E.metapopulationDynamicsClosed)))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse