import BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

structure BarrelledSpacePackage where
  space : Type u
  topology : TopologicalSpace space
  tvs : TopologicalVectorSpace ℝ space
  barrelledProperty : Prop
  barrelNeighborhoodBase : Prop
  uniformBoundednessPrinciple : Prop

structure BarrelledSpaceEvidence (B : BarrelledSpacePackage) where
  barrelledPropertyClosed : B.barrelledProperty
  barrelNeighborhoodBaseClosed : B.barrelNeighborhoodBase
  uniformBoundednessPrincipleClosed : B.uniformBoundednessPrinciple

def BarrelledSpaceClosed (B : BarrelledSpacePackage) : Prop :=
  B.barrelledProperty ∧ B.barrelNeighborhoodBase ∧ B.uniformBoundednessPrinciple

theorem barrelled_space_closed_from_evidence (B : BarrelledSpacePackage)
    (E : BarrelledSpaceEvidence B) : BarrelledSpaceClosed B := by
  exact And.intro E.barrelledPropertyClosed
    (And.intro E.barrelNeighborhoodBaseClosed E.uniformBoundednessPrincipleClosed)

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse