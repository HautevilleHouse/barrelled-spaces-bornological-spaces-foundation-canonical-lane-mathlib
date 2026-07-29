import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

structure BarrelledBornologicalAdmittedObject where
  barrelled : BarrelledSpace
  bornological : BornologicalSpace
  compatibility : Prop
  conclusion : compatibility

def BarrelledBornologicalWitnessClosed (O : BarrelledBornologicalAdmittedObject) : Prop :=
  O.compatibility

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
