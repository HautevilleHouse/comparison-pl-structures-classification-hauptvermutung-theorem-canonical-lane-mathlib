import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean.HauptvermutungCore

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure SmoothableStructurePackage {H : HauptvermutungPackage} where
  smoothAtlas : Type u
  smoothPlCompatibility : Prop
  smoothingExists : Prop
  uniqueSmoothingUpToDiffeomorphism : Prop

structure SmoothableStructureEvidence {H : HauptvermutungPackage} (S : SmoothableStructurePackage H) where
  smoothPlCompatibilityClosed : S.smoothPlCompatibility
  smoothingExistsClosed : S.smoothingExists
  uniqueSmoothingUpToDiffeomorphismClosed : S.uniqueSmoothingUpToDiffeomorphism

def SmoothableStructureClosed {H : HauptvermutungPackage} (S : SmoothableStructurePackage H) : Prop :=
  S.smoothPlCompatibility ∧ S.smoothingExists ∧ S.uniqueSmoothingUpToDiffeomorphism

theorem smoothable_structure_closed_from_evidence {H : HauptvermutungPackage} (S : SmoothableStructurePackage H) (E : SmoothableStructureEvidence S) : SmoothableStructureClosed S :=
  And.intro E.smoothPlCompatibilityClosed (And.intro E.smoothingExistsClosed E.uniqueSmoothingUpToDiffeomorphismClosed)

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse