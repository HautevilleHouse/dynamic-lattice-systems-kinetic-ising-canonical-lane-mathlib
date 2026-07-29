import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure PhaseTransitionPackage (M : KineticIsingSpinModel) where
  criticalTemperature : Type u
  orderParameter : Type v
  universalityClass : Prop
  scalingRelations : Prop

def PhaseTransitionClosed (P : PhaseTransitionPackage) : Prop :=
  P.universalityClass ∧ P.scalingRelations

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse