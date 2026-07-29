import DynamicLatticeSystemsKineticIsingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure LatticeSpinDynamicsPackage where
  lattice : Type u
  spinSpace : Type v
  hamiltonian : Type w
  spinFlipRate : spinSpace → Prop
  detailedBalance : spinFlipRate → hamiltonian → Prop
  dynamicsGenerator : spinFlipRate → Type x
  ergodicity : Prop
  mixing : Prop

structure LatticeSpinDynamicsEvidence (P : LatticeSpinDynamicsPackage) where
  detailedBalanceClosed : P.detailedBalance P.spinFlipRate P.hamiltonian
  ergodicityClosed : P.ergodicity
  mixingClosed : P.mixing

def LatticeSpinDynamicsClosed (P : LatticeSpinDynamicsPackage) : Prop :=
  P.ergodicity ∧ P.mixing

theorem lattice_spin_dynamics_closed_from_evidence (P : LatticeSpinDynamicsPackage)
    (E : LatticeSpinDynamicsEvidence P) : LatticeSpinDynamicsClosed P := by
  exact And.intro E.ergodicityClosed E.mixingClosed

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse