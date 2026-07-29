import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure SurgeryTheoryPackage where
  normalCobordism : Type u
  surgeryData : Type v
  surgeryObstructionGroup : Prop
  wallGroupComputed : Prop
  surgerySequenceExact : Prop

structure SurgeryTheoryEvidence (S : SurgeryTheoryPackage) where
  surgeryObstructionGroupClosed : S.surgeryObstructionGroup
  wallGroupComputedClosed : S.wallGroupComputed
  surgerySequenceExactClosed : S.surgerySequenceExact

def SurgeryTheoryClosed (S : SurgeryTheoryPackage) : Prop :=
  S.surgeryObstructionGroup ∧ S.wallGroupComputed ∧ S.surgerySequenceExact

theorem surgery_theory_closed_from_evidence (S : SurgeryTheoryPackage)
    (E : SurgeryTheoryEvidence S) : SurgeryTheoryClosed S := by
  exact And.intro E.surgeryObstructionGroupClosed
    (And.intro E.wallGroupComputedClosed E.surgerySequenceExactClosed)

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse
