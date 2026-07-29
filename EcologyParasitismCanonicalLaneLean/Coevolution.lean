import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure CoevolutionPackage (D : HostParasiteDynamicsPackage) where
  geneticDrift : Prop
  selectionPressure : Prop
  alleleFrequencies : Prop
  redQueenHypothesis : Prop

structure CoevolutionEvidence {D : HostParasiteDynamicsPackage} (C : CoevolutionPackage D) where
  geneticDriftClosed : C.geneticDrift
  selectionPressureClosed : C.selectionPressure
  alleleFrequenciesClosed : C.alleleFrequencies
  redQueenHypothesisClosed : C.redQueenHypothesis

def CoevolutionClosed {D : HostParasiteDynamicsPackage} (C : CoevolutionPackage D) : Prop :=
  C.geneticDrift ∧ C.selectionPressure ∧ C.alleleFrequencies ∧ C.redQueenHypothesis

theorem coevolution_closed_from_evidence
    {D : HostParasiteDynamicsPackage} (C : CoevolutionPackage D) (E : CoevolutionEvidence C) :
    CoevolutionClosed C := by
  exact And.intro E.geneticDriftClosed
    (And.intro E.selectionPressureClosed
      (And.intro E.alleleFrequenciesClosed E.redQueenHypothesisClosed))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse