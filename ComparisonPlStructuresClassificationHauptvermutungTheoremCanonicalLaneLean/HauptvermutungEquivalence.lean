import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure HauptvermutungProposal where
  sourcePl : PLStructurePackage
  targetPl : PLStructurePackage
  homeomorphismExists : Prop
  plEquivalenceExists : Prop
  obstructionGroupVanishes : Prop

structure HauptvermutungEvidence (H : HauptvermutungProposal) where
  homeomorphismExistsClosed : H.homeomorphismExists
  plEquivalenceExistsClosed : H.plEquivalenceExists
  obstructionGroupVanishesClosed : H.obstructionGroupVanishes

def HauptvermutungClosed (H : HauptvermutungProposal) : Prop :=
  H.homeomorphismExists ∧ H.plEquivalenceExists ∧ H.obstructionGroupVanishes

theorem hauptvermutung_closed_from_evidence (H : HauptvermutungProposal)
    (E : HauptvermutungEvidence H) : HauptvermutungClosed H := by
  exact And.intro E.homeomorphismExistsClosed
    (And.intro E.plEquivalenceExistsClosed E.obstructionGroupVanishesClosed)

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse