import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

def bridgeClosed (A : HauptvermutungAdmissibleClass) : Prop :=
  PLStructureClosed A.object

theorem bridge_from_admissible_class (A : HauptvermutungAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse