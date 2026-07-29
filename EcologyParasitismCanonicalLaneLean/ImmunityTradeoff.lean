import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure ImmunityTradeoffPackage where
  resistanceCost : Prop
  toleranceCost : Prop
  acquiredImmunity : Prop
  immunopathology : Prop
  tradeoffCurve : Prop

structure ImmunityTradeoffEvidence (I : ImmunityTradeoffPackage) where
  resistanceCostClosed : I.resistanceCost
  toleranceCostClosed : I.toleranceCost
  acquiredImmunityClosed : I.acquiredImmunity
  immunopathologyClosed : I.immunopathology
  tradeoffCurveClosed : I.tradeoffCurve

def ImmunityTradeoffClosed (I : ImmunityTradeoffPackage) : Prop :=
  I.resistanceCost ∧ I.toleranceCost ∧ I.acquiredImmunity ∧ I.immunopathology ∧ I.tradeoffCurve

theorem immunity_tradeoff_closed_from_evidence
    (I : ImmunityTradeoffPackage) (E : ImmunityTradeoffEvidence I) :
    ImmunityTradeoffClosed I := by
  exact And.intro E.resistanceCostClosed
    (And.intro E.toleranceCostClosed
      (And.intro E acquiredImmunityClosed
        (And.intro E.immunopathologyClosed E.tradeoffCurveClosed)))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse
