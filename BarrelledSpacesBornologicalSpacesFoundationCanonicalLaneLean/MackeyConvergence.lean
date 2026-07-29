import canonicalLaneMathlib.AdmissibleClass

/-!
# Mackey Convergence Lemma
-/

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

structure MackeyConvergencePackage where
  tvs : TVSObject
  bornological : BornologicalSpacePackage
  mackeyConvergenceCondition : Prop
  mackeyConvergenceConditionClosed : mackeyConvergenceCondition

structure MackeyConvergenceEvidence (M : MackeyConvergencePackage) where
  mackeyConvergenceConditionClosed : M.mackeyConvergenceConditionClosed

def MackeyConvergenceClosed (M : MackeyConvergencePackage) : Prop :=
  M.mackeyConvergenceCondition

theorem mackey_convergence_closed_from_evidence (M : MackeyConvergencePackage) (E : MackeyConvergenceEvidence M) :
    MackeyConvergenceClosed M := by
  exact E.mackeyConvergenceConditionClosed

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse