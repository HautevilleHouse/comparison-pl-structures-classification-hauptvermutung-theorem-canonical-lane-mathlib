import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure PlStructurePackage where
  underlyingSpace : Type u
  plAtlas : Type v
  compatibleCharts : Prop
  subdivisionStable : Prop
  linkStructure : Prop

structure PlStructureEvidence (P : PlStructurePackage) where
  compatibleChartsClosed : P.compatibleCharts
  subdivisionStableClosed : P.subdivisionStable
  linkStructureClosed : P.linkStructure

def PlStructureClosed (P : PlStructurePackage) : Prop :=
  P.compatibleCharts ∧ P.subdivisionStable ∧ P.linkStructure

theorem pl_structure_closed_from_evidence (P : PlStructurePackage) (E : PlStructureEvidence P) :
    PlStructureClosed P := by
  exact And.intro E.compatibleChartsClosed (And.intro E.subdivisionStableClosed E.linkStructureClosed)

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse