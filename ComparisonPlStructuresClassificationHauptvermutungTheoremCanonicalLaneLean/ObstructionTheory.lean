import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure ObstructionTheoryPackage where
  coefficients : Type u
  cohomologyClasses : Type v
  kirbySiebenmannInvariant : Prop
  obstructionClassVanishes : Prop
  plStructureClassification : Prop

structure ObstructionTheoryEvidence (O : ObstructionTheoryPackage) where
  kirbySiebenmannInvariantClosed : O.kirbySiebenmannInvariant
  obstructionClassVanishesClosed : O.obstructionClassVanishes
  plStructureClassificationClosed : O.plStructureClassification

def ObstructionTheoryClosed (O : ObstructionTheoryPackage) : Prop :=
  O.kirbySiebenmannInvariant ∧ O.obstructionClassVanishes ∧ O.plStructureClassification

theorem obstruction_theory_closed_from_evidence (O : ObstructionTheoryPackage)
    (E : ObstructionTheoryEvidence O) : ObstructionTheoryClosed O := by
  exact And.intro E.kirbySiebenmannInvariantClosed
    (And.intro E.obstructionClassVanishesClosed E.plStructureClassificationClosed)

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse
