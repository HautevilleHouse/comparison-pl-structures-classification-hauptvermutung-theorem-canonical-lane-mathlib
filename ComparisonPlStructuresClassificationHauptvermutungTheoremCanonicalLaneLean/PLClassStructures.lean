import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure PLStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  plAtlas : Type v
  plCompatible : Prop
  plSmoothComparison : Prop
  triangulationExists : Prop

structure PLStructureEvidence (P : PLStructurePackage) where
  plCompatibleClosed : P.plCompatible
  plSmoothComparisonClosed : P.plSmoothComparison
  triangulationExistsClosed : P.triangulationExists

def PLStructureClosed (P : PLStructurePackage) : Prop :=
  P.plCompatible ∧ P.plSmoothComparison ∧ P.triangulationExists

theorem pl_structure_closed_from_evidence (P : PLStructurePackage) (E : PLStructureEvidence P) : PLStructureClosed P :=
  And.intro E.plCompatibleClosed (And.intro E.plSmoothComparisonClosed E.triangulationExistsClosed)

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse