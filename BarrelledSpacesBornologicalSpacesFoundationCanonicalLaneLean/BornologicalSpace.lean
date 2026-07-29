import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

structure BornologicalSpacePackage where
  locallyConvexTVS : Type u
  bornologicalProperty : Prop
  boundedSetCharacterization : Prop
  completeness : Prop

structure BornologicalSpaceEvidence (B : BornologicalSpacePackage) where
  locallyConvexTVSClosed : B.locallyConvexTVS
  bornologicalPropertyClosed : B.bornologicalProperty
  boundedSetCharacterizationClosed : B.boundedSetCharacterization
  completenessClosed : B.completeness

def BornologicalSpaceClosed (B : BornologicalSpacePackage) : Prop :=
  B.locallyConvexTVS ∧ B.bornologicalProperty ∧ B.boundedSetCharacterization ∧ B.completeness

theorem bornological_space_closed_from_evidence (B : BornologicalSpacePackage) (E : BornologicalSpaceEvidence B) :
    BornologicalSpaceClosed B := by
  exact And.intro E.locallyConvexTVSClosed
    (And.intro E.bornologicalPropertyClosed
      (And.intro E.boundedSetCharacterizationClosed E.completenessClosed))

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse