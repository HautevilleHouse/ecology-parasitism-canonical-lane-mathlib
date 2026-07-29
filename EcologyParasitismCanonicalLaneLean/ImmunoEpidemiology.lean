import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure ImmunoEpidemiologyPackage (D : HostParasiteDynamicsPackage) where
  immuneResponse : Prop
  antigenicVariation : Prop
  herdImmunityThreshold : Prop
  vaccineEfficacy : Prop

structure ImmunoEpidemiologyEvidence {D : HostParasiteDynamicsPackage} (I : ImmunoEpidemiologyPackage D) where
  immuneResponseClosed : I.immuneResponse
  antigenicVariationClosed : I.antigenicVariation
  herdImmunityThresholdClosed : I.herdImmunityThreshold
  vaccineEfficacyClosed : I.vaccineEfficacy

def ImmunoEpidemiologyClosed {D : HostParasiteDynamicsPackage} (I : ImmunoEpidemiologyPackage D) : Prop :=
  I.immuneResponse ∧ I.antigenicVariation ∧ I.herdImmunityThreshold ∧ I.vaccineEfficacy

theorem immuno_epidemiology_closed_from_evidence
    {D : HostParasiteDynamicsPackage} (I : ImmunoEpidemiologyPackage D) (E : ImmunoEpidemiologyEvidence I) :
    ImmunoEpidemiologyClosed I := by
  exact And.intro E.immuneResponseClosed
    (And.intro E.antigenicVariationClosed
      (And.intro E.herdImmunityThresholdClosed E.vaccineEfficacyClosed))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse