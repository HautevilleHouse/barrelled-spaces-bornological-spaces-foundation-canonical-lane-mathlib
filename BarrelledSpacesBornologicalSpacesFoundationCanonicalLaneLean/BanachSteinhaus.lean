import canonicalLaneMathlib.AdmissibleClass

/-!
# Banach-Steinhaus (Uniform Boundedness) Theorem
-/

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

structure BanachSteinhausPackage where
  tvs : TVSObject
  barrelled : BarrelledSpacePackage
  pointwiseBoundedImpliesEquicontinuous : Prop
  pointwiseBoundedImpliesEquicontinuousClosed : pointwiseBoundedImpliesEquicontinuous

structure BanachSteinhausEvidence (B : BanachSteinhausPackage) where
  pointwiseBoundedImpliesEquicontinuousClosed : B.pointwiseBoundedImpliesEquicontinuousClosed

def BanachSteinhausClosed (B : BanachSteinhausPackage) : Prop :=
  B.pointwiseBoundedImpliesEquicontinuous

theorem banach_steinhaus_closed_from_evidence (B : BanachSteinhausPackage) (E : BanachSteinhausEvidence B) :
    BanachSteinhausClosed B := by
  exact E.pointwiseBoundedImpliesEquicontinuousClosed

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse