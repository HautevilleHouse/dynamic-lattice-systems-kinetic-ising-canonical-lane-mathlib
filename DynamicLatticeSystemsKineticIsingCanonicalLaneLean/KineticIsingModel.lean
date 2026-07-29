import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure KineticIsingSpinModel where
  latticeType : Type u
  spinState : latticeType → Type v
  couplingStrength : Prop
  externalField : Prop
  spinFlipRate : Prop

structure KineticIsingModelEvidence (M : KineticIsingSpinModel) where
  couplingStrengthClosed : M.couplingStrength
  externalFieldClosed : M.externalField
  spinFlipRateClosed : M.spinFlipRate

def KineticIsingModelClosed (M : KineticIsingSpinModel) : Prop :=
  M.couplingStrength ∧ M.externalField ∧ M.spinFlipRate

theorem kinetic_ising_model_closed_from_evidence (M : KineticIsingSpinModel)
    (E : KineticIsingModelEvidence M) : KineticIsingModelClosed M :=
  And.intro E.couplingStrengthClosed (And.intro E.externalFieldClosed E.spinFlipRateClosed)

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse