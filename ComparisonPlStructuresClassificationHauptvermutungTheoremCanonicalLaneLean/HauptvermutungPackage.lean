import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean.PLStructuresPackage

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure HauptvermutungPackage {P : PLStructuresPackage} where
  plHomeomorphic : P.manifold ≃ₚₗ P.manifold
  plHomeomorphicTerm : plHomeomorphic
  triangulationHomeomorphic : Prop
  homeomorphicImplication : Prop

structure HauptvermutungEvidence {P : PLStructuresPackage}
    (H : HauptvermutungPackage P) where
  plHomeomorphicClosed : H.plHomeomorphic
  triangulationHomeomorphicClosed : H.triangulationHomeomorphic
  homeomorphicImplicationClosed : H.homeomorphicImplication

def HauptvermutungClosed {P : PLStructuresPackage} (H : HauptvermutungPackage P) : Prop :=
  H.plHomeomorphic ∧ H.triangulationHomeomorphic ∧ H.homeomorphicImplication

theorem hauptvermutung_closed_from_evidence {P : PLStructuresPackage}
    (H : HauptvermutungPackage P) (E : HauptvermutungEvidence H) :
    HauptvermutungClosed H := by
  exact And.intro E.plHomeomorphicClosed
    (And.intro E.triangulationHomeomorphicClosed E.homeomorphicImplicationClosed)

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse
