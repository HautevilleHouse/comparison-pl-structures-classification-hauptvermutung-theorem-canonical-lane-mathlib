import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure PLTriangulationPackage where
  triangulation : Type u
  plStructureCompatible : Prop
  subdivisionStable : Prop
  linkWellDefined : Prop
  stellarMoveClosed : Prop

structure PLTriangulationEvidence (T : PLTriangulationPackage) where
  triangulationClosed : T.plStructureCompatible
  subdivisionStableClosed : T.subdivisionStable
  linkWellDefinedClosed : T.linkWellDefined
  stellarMoveClosedClosed : T.stellarMoveClosed

def PLTriangulationClosed (T : PLTriangulationPackage) : Prop :=
  T.plStructureCompatible ∧ T.subdivisionStable ∧ T.linkWellDefined ∧ T.stellarMoveClosed

theorem pl_triangulation_closed_from_evidence (T : PLTriangulationPackage)
    (E : PLTriangulationEvidence T) : PLTriangulationClosed T := by
  exact And.intro E.triangulationClosed
    (And.intro E.subdivisionStableClosed
      (And.intro E.linkWellDefinedClosed E.stellarMoveClosedClosed))

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse
