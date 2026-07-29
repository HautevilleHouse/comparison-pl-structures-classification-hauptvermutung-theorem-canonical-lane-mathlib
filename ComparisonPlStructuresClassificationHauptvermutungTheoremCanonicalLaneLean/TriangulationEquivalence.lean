import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean.PLClassStructures

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure TriangulationEquivalencePackage {P : PLStructurePackage} where
  simplicialComplex : Type u
  plHomeomorphismToManifold : Prop
  subdivisionInvariance : Prop
  combinatorialEquivalence : Prop

structure TriangulationEquivalenceEvidence {P : PLStructurePackage} (T : TriangulationEquivalencePackage P) where
  plHomeomorphismToManifoldClosed : T.plHomeomorphismToManifold
  subdivisionInvarianceClosed : T.subdivisionInvariance
  combinatorialEquivalenceClosed : T.combinatorialEquivalence

def TriangulationEquivalenceClosed {P : PLStructurePackage} (T : TriangulationEquivalencePackage P) : Prop :=
  T.plHomeomorphismToManifold ∧ T.subdivisionInvariance ∧ T.combinatorialEquivalence

theorem triangulation_equivalence_closed_from_evidence {P : PLStructurePackage} (T : TriangulationEquivalencePackage P) (E : TriangulationEquivalenceEvidence T) : TriangulationEquivalenceClosed T :=
  And.intro E.plHomeomorphismToManifoldClosed (And.intro E.subdivisionInvarianceClosed E.combinatorialEquivalenceClosed)

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse