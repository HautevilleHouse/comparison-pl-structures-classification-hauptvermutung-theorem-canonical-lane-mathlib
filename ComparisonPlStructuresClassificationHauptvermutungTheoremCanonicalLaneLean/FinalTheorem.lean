import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

def ConstrainedHauptvermutungClosure (A : HauptvermutungAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hauptvermutung_endgame (A : HauptvermutungAdmissibleClass) :
    ConstrainedHauptvermutungClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse