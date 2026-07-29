import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicLatticeSystemsKineticIsingCanonicalLaneLean.KineticIsingLattice

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure MeanFieldPackage (D : DynamicLatticePackage) where
  selfConsistencyEquation : Prop
  criticalTemperature : ℚ
  magnetization : D.lattice → ℚ
  orderParameter : Prop
  phaseTransition : Prop

structure MeanFieldEvidence {D : DynamicLatticePackage} (M : MeanFieldPackage D) where
  selfConsistencyEquationClosed : M.selfConsistencyEquation
  orderParameterClosed : M.orderParameter
  phaseTransitionClosed : M.phaseTransition

def MeanFieldClosed {D : DynamicLatticePackage} (M : MeanFieldPackage D) : Prop :=
  M.selfConsistencyEquation ∧ M.orderParameter ∧ M.phaseTransition

theorem mean_field_closed_from_evidence
    {D : DynamicLatticePackage} (M : MeanFieldPackage D) (E : MeanFieldEvidence M) :
    MeanFieldClosed M := by
  exact And.intro E.selfConsistencyEquationClosed
    (And.intro E.orderParameterClosed E.phaseTransitionClosed)

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse