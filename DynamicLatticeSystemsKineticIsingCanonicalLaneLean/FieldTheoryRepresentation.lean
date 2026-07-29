import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicLatticeSystemsKineticIsingCanonicalLaneLean.KineticIsingLattice

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure FieldTheoryAction where
  kineticTerm : ℚ
  potentialTerm : ℚ
  couplingConstant : ℚ
  renormalizationGroup : Prop

structure ResponseFunction where
  susceptibility : ℚ → ℚ
  relaxationTime : ℚ → ℚ
  dynamicScaling : Prop

structure FieldTheoryPackage (D : DynamicLatticePackage) where
  action : FieldTheoryAction
  responseFunction : ResponseFunction
  fluctuationDissipation : Prop
  correlationFunction : Prop
  dynamicRenormalization : Prop

structure FieldTheoryEvidence {D : DynamicLatticePackage} (F : FieldTheoryPackage D) where
  fluctuationDissipationClosed : F.fluctuationDissipation
  correlationFunctionClosed : F.correlationFunction
  dynamicRenormalizationClosed : F.dynamicRenormalization

def FieldTheoryClosed {D : DynamicLatticePackage} (F : FieldTheoryPackage D) : Prop :=
  F.fluctuationDissipation ∧ F.correlationFunction ∧ F.dynamicRenormalization

theorem field_theory_closed_from_evidence
    {D : DynamicLatticePackage} (F : FieldTheoryPackage D) (E : FieldTheoryEvidence F) :
    FieldTheoryClosed F := by
  exact And.intro E.fluctuationDissipationClosed
    (And.intro E.correlationFunctionClosed E.dynamicRenormalizationClosed)

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse