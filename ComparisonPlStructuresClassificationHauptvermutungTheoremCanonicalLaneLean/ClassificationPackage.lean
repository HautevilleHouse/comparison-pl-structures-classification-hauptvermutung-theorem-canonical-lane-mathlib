import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure ClassificationPackage where
  dimension : Nat
  topologicalManifoldsClassified : Prop
  plManifoldsClassified : Prop
  hauptvermutungHolds : Prop
  dimensionGtThree : dimension > 3
  kirbySiebenmannObstruction : Prop
  classificationComplete : Prop

structure ClassificationEvidence (C : ClassificationPackage) where
  topologicalManifoldsClassifiedClosed : C.topologicalManifoldsClassified
  plManifoldsClassifiedClosed : C.plManifoldsClassified
  hauptvermutungHoldsClosed : C.hauptvermutungHolds
  kirbySiebenmannObstructionClosed : C.kirbySiebenmannObstruction
  classificationCompleteClosed : C.classificationComplete

def ClassificationClosed (C : ClassificationPackage) : Prop :=
  C.topologicalManifoldsClassified ∧ C.plManifoldsClassified ∧
  C.hauptvermutungHolds ∧ C.kirbySiebenmannObstruction ∧
  C.classificationComplete

theorem classification_closed_from_evidence (C : ClassificationPackage)
    (E : ClassificationEvidence C) : ClassificationClosed C := by
  exact And.intro E.topologicalManifoldsClassifiedClosed
    (And.intro E.plManifoldsClassifiedClosed
      (And.intro E.hauptvermutungHoldsClosed
        (And.intro E.kirbySiebenmannObstructionClosed E.classificationCompleteClosed)))

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse