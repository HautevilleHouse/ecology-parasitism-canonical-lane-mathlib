/-!
# Endpoint Classification Package
-/

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure EndpointClassificationPackage where
  targetEcosystem : Type u
  targetTopology : TopologicalSpace targetEcosystem
  stableHostParasiteCoexistence : Prop
  extinctionOrRegulation : Prop
  endpointMatchesStability : Prop

structure EndpointClassificationEvidence (E : EndpointClassificationPackage) where
  stableHostParasiteCoexistenceClosed : E.stableHostParasiteCoexistence
  extinctionOrRegulationClosed : E.extinctionOrRegulation
  endpointMatchesStabilityClosed : E.endpointMatchesStability

def EndpointClassificationClosed (E : EndpointClassificationPackage) : Prop :=
  E.stableHostParasiteCoexistence ∧ E.extinctionOrRegulation ∧ E.endpointMatchesStability

theorem endpoint_classification_closed_from_evidence (E : EndpointClassificationPackage)
    (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E := by
  exact And.intro Ev.stableHostParasiteCoexistenceClosed
    (And.intro Ev.extinctionOrRegulationClosed Ev.endpointMatchesStabilityClosed)

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse