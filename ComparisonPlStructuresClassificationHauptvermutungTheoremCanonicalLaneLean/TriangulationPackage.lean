import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure TriangulationPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  simplicialComplex : Type v
  triangulationMap : Prop
  plStructureInduced : Prop
  combinatorialInvariant : Prop

structure TriangulationEvidence (T : TriangulationPackage) where
  simplicialComplexClosed : T.simplicialComplex
  triangulationMapClosed : T.triangulationMap
  plStructureInducedClosed : T.plStructureInduced
  combinatorialInvariantClosed : T.combinatorialInvariant

def TriangulationClosed (T : TriangulationPackage) : Prop :=
  T.simplicialComplex ∧ T.triangulationMap ∧ T.plStructureInduced ∧ T.combinatorialInvariant

theorem triangulation_closed_from_evidence (T : TriangulationPackage)
    (E : TriangulationEvidence T) : TriangulationClosed T := by
  exact And.intro E.simplicialComplexClosed
    (And.intro E.triangulationMapClosed
      (And.intro E.plStructureInducedClosed E.combinatorialInvariantClosed))

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse
