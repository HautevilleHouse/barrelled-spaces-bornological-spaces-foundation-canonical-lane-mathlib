import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

structure BarrelledSpacePackage where
  space : Type u
  topology : TopologicalSpace space
  locallyConvex : Prop
  barrelledProperty : Prop
  banachSteinhausHolds : Prop

structure BarrelledSpaceEvidence (B : BarrelledSpacePackage) where
  locallyConvexClosed : B.locallyConvex
  barrelledPropertyClosed : B.barrelledProperty
  banachSteinhausHoldsClosed : B.banachSteinhausHolds

def BarrelledSpaceClosed (B : BarrelledSpacePackage) : Prop :=
  B.locallyConvex ∧ B.barrelledProperty ∧ B.banachSteinhausHolds

theorem barrelled_space_closed_from_evidence (B : BarrelledSpacePackage)
    (E : BarrelledSpaceEvidence B) : BarrelledSpaceClosed B := by
  exact And.intro E.locallyConvexClosed
    (And.intro E.barrelledPropertyClosed E.banachSteinhausHoldsClosed)

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse