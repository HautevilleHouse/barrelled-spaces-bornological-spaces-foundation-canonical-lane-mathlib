import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

structure BarrelledBornologicalAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  tvs : TopologicalVectorSpace ℝ space
  barrelled : Prop
  bornological : Prop
  conclusion : barrelled ∧ bornological

structure AdmissibleClass where
  object : BarrelledBornologicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.barrelled ∧ A.object.bornological) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse