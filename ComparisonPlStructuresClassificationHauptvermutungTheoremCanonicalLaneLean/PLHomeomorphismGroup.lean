import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean

structure PLHomeomorphismGroup (M : Type u) [TopologicalSpace M] where
  generators : Type v
  relations : Type w
  groupPresented : Prop
  groupPresentedTerm : groupPresented

structure PLStructureEquivalence where
  source : Type u
  target : Type v
  homeomorphismExists : Prop
  combinatorialEquivalence : Prop
  homeomorphismExistsTerm : homeomorphismExists
  combinatorialEquivalenceTerm : combinatorialEquivalence

def PLHomeomorphismGroupClosed {M : Type u} [TopologicalSpace M] (G : PLHomeomorphismGroup M) : Prop :=
  G.groupPresented

end ComparisonPlStructuresClassificationHauptvermutungTheoremCanonicalLaneLean
end HautevilleHouse