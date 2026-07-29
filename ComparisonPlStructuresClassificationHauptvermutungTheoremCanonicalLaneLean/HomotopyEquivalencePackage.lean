import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure HomotopyEquivalencePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  homotopyType : Type v
  homotopyEquiv : Prop
  homotopyInvariant : Prop
  homotopyClassification : Prop

structure HomotopyEquivalenceEvidence (H : HomotopyEquivalencePackage) where
  homotopyTypeClosed : H.homotopyType
  homotopyEquivClosed : H.homotopyEquiv
  homotopyInvariantClosed : H.homotopyInvariant
  homotopyClassificationClosed : H.homotopyClassification

def HomotopyEquivalenceClosed (H : HomotopyEquivalencePackage) : Prop :=
  H.homotopyType ∧ H.homotopyEquiv ∧ H.homotopyInvariant ∧ H.homotopyClassification

theorem homotopy_equivalence_closed_from_evidence (H : HomotopyEquivalencePackage)
    (E : HomotopyEquivalenceEvidence H) : HomotopyEquivalenceClosed H := by
  exact And.intro E.homotopyTypeClosed
    (And.intro E.homotopyEquivClosed
      (And.intro E.homotopyInvariantClosed E.homotopyClassificationClosed))

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse
