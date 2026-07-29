import BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

structure BornologicalSpacePackage where
  space : Type u
  topology : TopologicalSpace space
  tvs : TopologicalVectorSpace ℝ space
  bornologicalProperty : Prop
  boundedSetStructure : Prop
  bornivoreBase : Prop

structure BornologicalSpaceEvidence (B : BornologicalSpacePackage) where
  bornologicalPropertyClosed : B.bornologicalProperty
  boundedSetStructureClosed : B.boundedSetStructure
  bornivoreBaseClosed : B.bornivoreBase

def BornologicalSpaceClosed (B : BornologicalSpacePackage) : Prop :=
  B.bornologicalProperty ∧ B.boundedSetStructure ∧ B.bornivoreBase

theorem bornological_space_closed_from_evidence (B : BornologicalSpacePackage)
    (E : BornologicalSpaceEvidence B) : BornologicalSpaceClosed B := by
  exact And.intro E.bornologicalPropertyClosed
    (And.intro E.boundedSetStructureClosed E.bornivoreBaseClosed)

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse