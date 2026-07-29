import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure EpidemiologicalThresholdsPackage where
  endemicEquilibrium : Prop
  diseaseFreeEquilibrium : Prop
  stabilityCondition : Prop
  bifurcationParameter : Prop

structure EpidemiologicalThresholdsEvidence (E : EpidemiologicalThresholdsPackage) where
  endemicEquilibriumClosed : E.endemicEquilibrium
  diseaseFreeEquilibriumClosed : E.diseaseFreeEquilibrium
  stabilityConditionClosed : E.stabilityCondition
  bifurcationParameterClosed : E.bifurcationParameter

def EpidemiologicalThresholdsClosed (E : EpidemiologicalThresholdsPackage) : Prop :=
  E.endemicEquilibrium ∧ E.diseaseFreeEquilibrium ∧ E.stabilityCondition ∧ E.bifurcationParameter

theorem epidemiological_thresholds_closed_from_evidence (E : EpidemiologicalThresholdsPackage) (Ev : EpidemiologicalThresholdsEvidence E) : EpidemiologicalThresholdsClosed E :=
  And.intro Ev.endemicEquilibriumClosed (And.intro Ev.diseaseFreeEquilibriumClosed (And.intro Ev.stabilityConditionClosed Ev.bifurcationParameterClosed))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse