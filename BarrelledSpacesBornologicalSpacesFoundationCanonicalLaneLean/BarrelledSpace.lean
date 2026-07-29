import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

structure BarrelledSpacePackage where
  locallyConvexTVS : Type u
  barrelCondition : Prop
  completeness : Prop
  barrelledProperty : Prop

structure BarrelledSpaceEvidence (B : BarrelledSpacePackage) where
  locallyConvexTVSClosed : B.locallyConvexTVS
  barrelConditionClosed : B.barrelCondition
  completenessClosed : B.completeness
  barrelledPropertyClosed : B.barrelledProperty

def BarrelledSpaceClosed (B : BarrelledSpacePackage) : Prop :=
  B.locallyConvexTVS ∧ B.barrelCondition ∧ B.completeness ∧ B.barrelledProperty

theorem barrelled_space_closed_from_evidence (B : BarrelledSpacePackage) (E : BarrelledSpaceEvidence B) :
    BarrelledSpaceClosed B := by
  exact And.intro E.locallyConvexTVSClosed
    (And.intro E.barrelConditionClosed
      (And.intro E.completenessClosed E.barrelledPropertyClosed))

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse