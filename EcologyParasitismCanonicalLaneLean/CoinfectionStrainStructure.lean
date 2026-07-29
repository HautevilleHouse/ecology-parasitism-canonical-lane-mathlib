import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyParasitismCanonicalLaneLean.ParasiteTransmissionModel

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure CoinfectionStrainPackage {P : HostParasitePopulationPackage}
    (T : ParasiteTransmissionPackage P) where
  strainTypes : Type u
  crossImmunityMap : strainTypes → strainTypes → ℝ
  crossImmunitySymmetric : ∀ s t, crossImmunityMap s t = crossImmunityMap t s
  crossImmunityBounded : ∀ s t, crossImmunityMap s t ≤ 1.0

structure CoinfectionStrainEvidence {P : HostParasitePopulationPackage}
    {T : ParasiteTransmissionPackage P} (C : CoinfectionStrainPackage T) where
  crossImmunitySymmetricClosed : C.crossImmunitySymmetric
  crossImmunityBoundedClosed : C.crossImmunityBounded

def CoinfectionStrainClosed {P : HostParasitePopulationPackage}
    {T : ParasiteTransmissionPackage P} (C : CoinfectionStrainPackage T) : Prop :=
  C.crossImmunitySymmetric ∧ C.crossImmunityBounded

theorem coinfection_strain_closed_from_evidence
    {P : HostParasitePopulationPackage} {T : ParasiteTransmissionPackage P}
    (C : CoinfectionStrainPackage T) (E : CoinfectionStrainEvidence C) :
    CoinfectionStrainClosed C := by
  exact And.intro E.crossImmunitySymmetricClosed E.crossImmunityBoundedClosed

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse