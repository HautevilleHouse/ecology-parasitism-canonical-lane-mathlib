import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

def ConstrainedParasitismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_parasitism_endgame (A : AdmissibleClass) :
    ConstrainedParasitismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse
