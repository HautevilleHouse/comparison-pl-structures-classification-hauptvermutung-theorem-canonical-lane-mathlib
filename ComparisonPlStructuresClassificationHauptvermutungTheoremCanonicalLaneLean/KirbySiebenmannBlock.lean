import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure KirbySiebenmannBlock where
  topologicalManifold : Type u
  stableClass : Type v
  ksInvariant : metricSpace -> Prop
  obstructionVanishes : Bool
  triangulationObstruction : Prop
  plStructureExists : Prop

structure KirbySiebenmannEvidence (K : KirbySiebenmannBlock) where
  ksInvariantDefined : Prop
  obstructionVanishesClosed : K.obstructionVanishes = true
  plStructureExistsClosed : K.plStructureExists

def KirbySiebenmannClosed (K : KirbySiebenmannBlock) : Prop :=
  K.ksInvariant (by exact real) ∧ (K.obstructionVanishes = true) ∧ K.plStructureExists

theorem kirby_siebenmann_closed_from_evidence (K : KirbySiebenmannBlock)
    (E : KirbySiebenmannEvidence K) : KirbySiebenmannClosed K := by
  exact And.intro E.ksInvariantDefined
    (And.intro E.obstructionVanishesClosed E.plStructureExistsClosed)

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse