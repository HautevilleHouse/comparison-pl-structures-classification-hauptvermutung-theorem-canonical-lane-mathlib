import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure SmoothingCompatibilityPackage where
  smoothStructureGiven : Prop
  plStructureInduced : Prop
  smoothPlCompatible : Prop
  whiteheadTorsionVanishes : Prop

structure SmoothingCompatibilityEvidence (S : SmoothingCompatibilityPackage) where
  smoothPlCompatibleClosed : S.smoothPlCompatible
  whiteheadTorsionVanishesClosed : S.whiteheadTorsionVanishes

def SmoothingCompatibilityClosed (S : SmoothingCompatibilityPackage) : Prop :=
  S.smoothPlCompatible ∧ S.whiteheadTorsionVanishes

theorem smoothing_compatibility_closed_from_evidence (S : SmoothingCompatibilityPackage) (E : SmoothingCompatibilityEvidence S) :
    SmoothingCompatibilityClosed S := by
  exact And.intro E.smoothPlCompatibleClosed E.whiteheadTorsionVanishesClosed

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse