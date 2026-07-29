import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure CoinfectionImmunityPackage where
  multipleStrains : Prop
  crossImmunity : Prop
  immuneResponse : Prop
  strainCompetition : Prop

structure CoinfectionImmunityEvidence (C : CoinfectionImmunityPackage) where
  multipleStrainsClosed : C.multipleStrains
  crossImmunityClosed : C.crossImmunity
  immuneResponseClosed : C.immuneResponse
  strainCompetitionClosed : C.strainCompetition

def CoinfectionImmunityClosed (C : CoinfectionImmunityPackage) : Prop :=
  C.multipleStrains ∧ C.crossImmunity ∧ C.immuneResponse ∧ C.strainCompetition

theorem coinfection_immunity_closed_from_evidence
    (C : CoinfectionImmunityPackage) (E : CoinfectionImmunityEvidence C) :
    CoinfectionImmunityClosed C := by
  exact And.intro E.multipleStrainsClosed
    (And.intro E.crossImmunityClosed
      (And.intro E.immuneResponseClosed E.strainCompetitionClosed))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse