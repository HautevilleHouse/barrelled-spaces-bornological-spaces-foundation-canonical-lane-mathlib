import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

structure BornologicalSpacePackage where
  space : Type u
  topology : TopologicalSpace space
  bornologicalStructure : Prop
  boundedSetCharacterization : Prop
  completeness : Prop

structure BornologicalSpaceEvidence (B : BornologicalSpacePackage) where
  bornologicalStructureClosed : B.bornologicalStructure
  boundedSetCharacterizationClosed : B.boundedSetCharacterization
  completenessClosed : B.completeness

def BornologicalSpaceClosed (B : BornologicalSpacePackage) : Prop :=
  B.bornologicalStructure ∧ B.boundedSetCharacterization ∧ B.completeness

theorem bornological_space_closed_from_evidence (B : BornologicalSpacePackage)
    (E : BornologicalSpaceEvidence B) : BornologicalSpaceClosed B := by
  exact And.intro E.bornologicalStructureClosed
    (And.intro E.boundedSetCharacterizationClosed E.completenessClosed)

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse