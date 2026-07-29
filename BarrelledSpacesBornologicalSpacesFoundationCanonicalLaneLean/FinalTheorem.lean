import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean.BarrelledSpace
import HautevilleHouse.BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean.BornologicalSpace

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

structure BarrelledBornologicalSpace where
  barrelled : BarrelledSpacePackage
  bornological : BornologicalSpacePackage
  compatibility : Prop

structure AdmissibleObject where
  space : BarrelledBornologicalSpace
  barrelledClosed : BarrelledSpaceClosed space.barrelled
  bornologicalClosed : BornologicalSpaceClosed space.bornological
  compatibilityClosed : space.compatibility

def AdmissibleObjectWitness (O : AdmissibleObject) : Prop :=
  O.barrelledClosed ∧ O.bornologicalClosed ∧ O.compatibilityClosed

structure AdmissibleClass where
  object : AdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmissibleObjectWitness A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  exact And.intro A.object.barrelledClosed (And.intro A.object.bornologicalClosed A.object.compatibilityClosed)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedBarrelledBornologicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_barrelled_bornological_endgame (A : AdmissibleClass) :
    ConstrainedBarrelledBornologicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse