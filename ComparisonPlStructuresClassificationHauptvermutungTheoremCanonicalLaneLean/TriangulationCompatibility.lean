import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure Triangulation (M : Type u) [TopologicalSpace M] where
  simplexData : Type v
  faceMaps : Type w
  isTriangulation : Prop
  isTriangulationTerm : isTriangulation

structure TriangulationCompatibility where
  sourceTriangulation : Triangulation Unit
  targetTriangulation : Triangulation Unit
  commonRefinement : Prop
  commonRefinementTerm : commonRefinement

def TriangulationCompatibilityClosed (C : TriangulationCompatibility) : Prop :=
  C.commonRefinement

theorem triangulation_compatibility_closed_from_evidence (C : TriangulationCompatibility) : TriangulationCompatibilityClosed C :=
  C.commonRefinementTerm

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse