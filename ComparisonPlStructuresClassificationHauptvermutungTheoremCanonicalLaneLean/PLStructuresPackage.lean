import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure PLStructurePackage where
  manifold : Type u
  plAtlas : Type v
  combinatorialCompatibility : Prop
  plSmoothComparability : Prop
  homologyInvariance : Prop

structure PLStructureEvidence (P : PLStructurePackage) where
  combinatorialCompatibilityClosed : P.combinatorialCompatibility
  plSmoothComparabilityClosed : P.plSmoothComparability
  homologyInvarianceClosed : P.homologyInvariance

def PLStructureClosed (P : PLStructurePackage) : Prop :=
  P.combinatorialCompatibility ∧ P.plSmoothComparability ∧ P.homologyInvariance

theorem pl_structure_closed_from_evidence (P : PLStructurePackage)
    (E : PLStructureEvidence P) : PLStructureClosed P := by
  exact And.intro E.combinatorialCompatibilityClosed
    (And.intro E.plSmoothComparabilityClosed E.homologyInvarianceClosed)

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse