import BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.barrelled ∧ A.object.bornological

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse