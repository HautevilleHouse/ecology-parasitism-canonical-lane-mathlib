import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyParasitismCanonicalLaneLean.ParasiteTransmissionModel

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure EpidemiologicalThresholdPackage {P : HostParasitePopulationPackage}
    (T : ParasiteTransmissionPackage P) where
  thresholdCondition : ℝ
  endemicEquilibriumExists : T.basicReproductionNumber > 1.0
  thresholdConditionDerived : thresholdCondition = T.basicReproductionNumber - 1.0

structure EpidemiologicalThresholdEvidence {P : HostParasitePopulationPackage}
    {T : ParasiteTransmissionPackage P} (E : EpidemiologicalThresholdPackage T) where
  endemicEquilibriumExistsClosed : E.endemicEquilibriumExists
  thresholdConditionDerivedClosed : E.thresholdConditionDerived

def EpidemiologicalThresholdClosed {P : HostParasitePopulationPackage}
    {T : ParasiteTransmissionPackage P} (E : EpidemiologicalThresholdPackage T) : Prop :=
  E.endemicEquilibriumExists ∧ E.thresholdConditionDerived

theorem epidemiological_threshold_closed_from_evidence
    {P : HostParasitePopulationPackage} {T : ParasiteTransmissionPackage P}
    (E : EpidemiologicalThresholdPackage T) (Ev : EpidemiologicalThresholdEvidence E) :
    EpidemiologicalThresholdClosed E := by
  exact And.intro Ev.endemicEquilibriumExistsClosed Ev.thresholdConditionDerivedClosed

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse