import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean.BarrelledSpaceDefinition
import HautevilleHouse.BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean.BornologicalSpaceDefinition

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

structure BarrelledBornologicalFoundationPackage where
  barrelled : BarrelledSpacePackage
  bornological : BornologicalSpacePackage
  barrelledImpliesBornivorous : Prop
  bornologicalImpliesBarrelClosed : Prop
  equivalenceUnderCompleteness : Prop

structure BarrelledBornologicalFoundationEvidence (F : BarrelledBornologicalFoundationPackage) where
  barrelledImpliesBornivorousClosed : F.barrelledImpliesBornivorous
  bornologicalImpliesBarrelClosedClosed : F.bornologicalImpliesBarrelClosed
  equivalenceUnderCompletenessClosed : F.equivalenceUnderCompleteness

def BarrelledBornologicalFoundationClosed (F : BarrelledBornologicalFoundationPackage) : Prop :=
  F.barrelledImpliesBornivorous ∧ F.bornologicalImpliesBarrelClosed ∧ F.equivalenceUnderCompleteness

theorem barrelled_bornological_foundation_closed_from_evidence
    (F : BarrelledBornologicalFoundationPackage) (E : BarrelledBornologicalFoundationEvidence F) :
    BarrelledBornologicalFoundationClosed F :=
  And.intro E.barrelledImpliesBornivorousClosed (And.intro E.bornologicalImpliesBarrelClosedClosed E.equivalenceUnderCompletenessClosed)

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse