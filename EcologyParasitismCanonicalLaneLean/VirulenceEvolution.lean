import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyParasitismCanonicalLaneLean

structure VirulenceEvolutionPackage where
  hostMortality : Prop
  parasiteReproduction : Prop
  virulenceTradeoff : Prop
  optimalVirulence : Prop
  evolutionarilyStableState : Prop

structure VirulenceEvolutionEvidence (V : VirulenceEvolutionPackage) where
  hostMortalityClosed : V.hostMortality
  parasiteReproductionClosed : V.parasiteReproduction
  virulenceTradeoffClosed : V.virulenceTradeoff
  optimalVirulenceClosed : V.optimalVirulence
  evolutionarilyStableStateClosed : V.evolutionarilyStableState

def VirulenceEvolutionClosed (V : VirulenceEvolutionPackage) : Prop :=
  V.hostMortality ∧ V.parasiteReproduction ∧ V.virulenceTradeoff ∧ V.optimalVirulence ∧ V.evolutionarilyStableState

theorem virulence_evolution_closed_from_evidence (V : VirulenceEvolutionPackage) (E : VirulenceEvolutionEvidence V) : VirulenceEvolutionClosed V :=
  And.intro E.hostMortalityClosed (And.intro E.parasiteReproductionClosed (And.intro E.virulenceTradeoffClosed (And.intro E.optimalVirulenceClosed E.evolutionarilyStableStateClosed)))

end EcologyParasitismCanonicalLaneLean
end HautevilleHouse