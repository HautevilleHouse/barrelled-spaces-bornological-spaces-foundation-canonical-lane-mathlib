import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.Projection
import BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

open canonicalLaneMathlib.Projection

structure BarrelledBornologicalEndgameState where
  object : BarrelledBornologicalAdmittedObject

def barrelledBornologicalProjection : Projection BarrelledBornologicalEndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem barrelled_bornological_projection_idempotent (x : BarrelledBornologicalEndgameState) :
    barrelledBornologicalProjection.toFun (barrelledBornologicalProjection.toFun x) = barrelledBornologicalProjection.toFun x := by
  exact barrelledBornologicalProjection.idempotent x

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse