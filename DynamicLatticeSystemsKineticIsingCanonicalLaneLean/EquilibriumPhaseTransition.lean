import DynamicLatticeSystemsKineticIsingCanonicalLaneLean.KawasakiDynamics

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure EquilibriumPhaseTransitionPackage {K : KawasakiDynamicsPackage}
    (Ka : KawasakiDynamicsPackage) where
  criticalTemperature : Prop
  magnetization : Prop
  susceptibility : Prop
  correlationLength : Prop
  orderParameter : magnetizaton → Prop

structure EquilibriumPhaseTransitionEvidence {Ka : KawasakiDynamicsPackage}
    (E : EquilibriumPhaseTransitionPackage Ka) where
  criticalTemperatureClosed : E.criticalTemperature
  magnetizationClosed : E.magnetization
  susceptibilityClosed : E.susceptibility
  correlationLengthClosed : E.correlationLength

def EquilibriumPhaseTransitionClosed {Ka : KawasakiDynamicsPackage}
    (E : EquilibriumPhaseTransitionPackage Ka) : Prop :=
  E.criticalTemperature ∧ E.magnetization ∧ E.susceptibility ∧ E.correlationLength

theorem equilibrium_phase_transition_closed_from_evidence
    {Ka : KawasakiDynamicsPackage} (Epkg : EquilibriumPhaseTransitionPackage Ka)
    (E : EquilibriumPhaseTransitionEvidence Epkg) :
    EquilibriumPhaseTransitionClosed Epkg := by
  exact And.intro E.criticalTemperatureClosed
    (And.intro E.magnetizationClosed
      (And.intro E.susceptibilityClosed E.correlationLengthClosed))

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse