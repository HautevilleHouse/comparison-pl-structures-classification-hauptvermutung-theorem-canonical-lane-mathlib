import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure SmoothableStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothAtlas : Type v
  smoothCompatible : Prop
  plSmoothComparison : Prop
  smoothingExists : Prop

structure SmoothableStructureEvidence (S : SmoothableStructurePackage) where
  smoothAtlasClosed : S.smoothAtlas
  smoothCompatibleClosed : S.smoothCompatible
  plSmoothComparisonClosed : S.plSmoothComparison
  smoothingExistsClosed : S.smoothingExists

def SmoothableStructureClosed (S : SmoothableStructurePackage) : Prop :=
  S.smoothAtlas ∧ S.smoothCompatible ∧ S.plSmoothComparison ∧ S.smoothingExists

theorem smoothable_structure_closed_from_evidence (S : SmoothableStructurePackage)
    (E : SmoothableStructureEvidence S) : SmoothableStructureClosed S := by
  exact And.intro E.smoothAtlasClosed
    (And.intro E.smoothCompatibleClosed
      (And.intro E.plSmoothComparisonClosed E.smoothingExistsClosed))

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse
