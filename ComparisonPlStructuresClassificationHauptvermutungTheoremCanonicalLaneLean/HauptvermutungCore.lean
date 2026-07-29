import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure HauptvermutungPackage where
  plManifoldOne : Type u
  plManifoldTwo : Type v
  plHomeomorphic : Prop
  combinatorialEquiv : Prop
  hauptvermutungStatement : Prop

structure HauptvermutungEvidence (H : HauptvermutungPackage) where
  plHomeomorphicClosed : H.plHomeomorphic
  combinatorialEquivClosed : H.combinatorialEquiv
  hauptvermutungStatementClosed : H.hauptvermutungStatement

def HauptvermutungClosed (H : HauptvermutungPackage) : Prop :=
  H.plHomeomorphic ∧ H.combinatorialEquiv ∧ H.hauptvermutungStatement

theorem hauptvermutung_closed_from_evidence (H : HauptvermutungPackage) (E : HauptvermutungEvidence H) : HauptvermutungClosed H :=
  And.intro E.plHomeomorphicClosed (And.intro E.combinatorialEquivClosed E.hauptvermutungStatementClosed)

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse