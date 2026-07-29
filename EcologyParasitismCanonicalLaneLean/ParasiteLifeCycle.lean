import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure ParasiteLifeCyclePackage where
  directLifeCycle : Prop
  indirectLifeCycle : Prop
  intermediateHost : Prop
  definitiveHost : Prop

structure ParasiteLifeCycleEvidence (P : ParasiteLifeCyclePackage) where
  directLifeCycleClosed : P.directLifeCycle
  indirectLifeCycleClosed : P.indirectLifeCycle
  intermediateHostClosed : P.intermediateHost
  definitiveHostClosed : P.definitiveHost

def ParasiteLifeCycleClosed (P : ParasiteLifeCyclePackage) : Prop :=
  P.directLifeCycle ∧ P.indirectLifeCycle ∧
  P.intermediateHost ∧ P.definitiveHost

theorem parasite_life_cycle_closed_from_evidence
    (P : ParasiteLifeCyclePackage) (E : ParasiteLifeCycleEvidence P) :
    ParasiteLifeCycleClosed P := by
  exact And.intro E.directLifeCycleClosed
    (And.intro E.indirectLifeCycleClosed
      (And.intro E.intermediateHostClosed E.definitiveHostClosed))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse