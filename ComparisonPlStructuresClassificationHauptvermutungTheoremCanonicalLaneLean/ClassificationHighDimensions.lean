import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean.ObstructionTheory

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure ClassificationHighDimensionsPackage {H : HauptvermutungPackage} {S : SmoothableStructurePackage H} {O : ObstructionTheoryPackage H S} where
  dimensionAtLeastFive : Prop
  plStructureClassification : Prop
  hauptvermutungHolds : Prop
  counterexampleKnown : Prop

structure ClassificationHighDimensionsEvidence {H : HauptvermutungPackage} {S : SmoothableStructurePackage H} {O : ObstructionTheoryPackage H S} (C : ClassificationHighDimensionsPackage H S O) where
  dimensionAtLeastFiveClosed : C.dimensionAtLeastFive
  plStructureClassificationClosed : C.plStructureClassification
  hauptvermutungHoldsClosed : C.hauptvermutungHolds
  counterexampleKnownClosed : C.counterexampleKnown

def ClassificationHighDimensionsClosed {H : HauptvermutungPackage} {S : SmoothableStructurePackage H} {O : ObstructionTheoryPackage H S} (C : ClassificationHighDimensionsPackage H S O) : Prop :=
  C.dimensionAtLeastFive ∧ C.plStructureClassification ∧ C.hauptvermutungHolds ∧ C.counterexampleKnown

theorem classification_high_dimensions_closed_from_evidence {H : HauptvermutungPackage} {S : SmoothableStructurePackage H} {O : ObstructionTheoryPackage H S} (C : ClassificationHighDimensionsPackage H S O) (E : ClassificationHighDimensionsEvidence C) : ClassificationHighDimensionsClosed C :=
  And.intro E.dimensionAtLeastFiveClosed (And.intro E.plStructureClassificationClosed (And.intro E.hauptvermutungHoldsClosed E.counterexampleKnownClosed))

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse