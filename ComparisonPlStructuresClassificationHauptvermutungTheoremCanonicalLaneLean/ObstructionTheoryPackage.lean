import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure ObstructionTheoryPackage where
  homologyManifold : Type u
  surgeryObstructionGroup : Type v
  normalInvariantSet : Type w
  surgerySequenceExact : Prop
  vanishingCriterion : Prop

structure ObstructionTheoryEvidence (O : ObstructionTheoryPackage) where
  surgerySequenceExactClosed : O.surgerySequenceExact
  vanishingCriterionClosed : O.vanishingCriterion

def ObstructionTheoryClosed (O : ObstructionTheoryPackage) : Prop :=
  O.surgerySequenceExact ∧ O.vanishingCriterion

theorem obstruction_theory_closed_from_evidence (O : ObstructionTheoryPackage)
    (E : ObstructionTheoryEvidence O) : ObstructionTheoryClosed O := by
  exact And.intro E.surgerySequenceExactClosed E.vanishingCriterionClosed

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse