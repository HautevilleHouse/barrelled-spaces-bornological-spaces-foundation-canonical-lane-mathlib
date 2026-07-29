import .FinalTheorem

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "barrelled-bornological-foundation",
  theoremObject := "Barrelled and Bornological Spaces Bridge",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "Unrestricted classical closure remains carried; theorem-specific endgame closes over admitted class."
}

theorem theorem_specific_endgame_pilot_checked :
    ∀ A : AdmissibleClass, ConstrainedBarrelledBornologicalClosure A :=
  λ A => constrained_barrelled_bornological_endgame A

end BarrelledSpacesBornologicalSpacesFoundationCanonicalLaneLean
end HautevilleHouse
