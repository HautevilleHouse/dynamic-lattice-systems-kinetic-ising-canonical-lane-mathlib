import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure LatticeSpinSite where
  index : ℕ
  spin : ℤ
  spinFlipEnergy : Prop
  flipRate : ℚ

def spinFlipEnergyCondition (s : LatticeSpinSite) : Prop := s.spinFlipEnergy

def flipRateCondition (s : LatticeSpinSite) : Prop := s.flipRate > 0

structure DynamicLatticePackage where
  lattice : Type
  spins : lattice → ℤ
  hamiltonian : lattice → ℚ
  couplingConstant : ℚ
  domainWalls : Prop
  flipDynamics : Prop

structure DynamicLatticeEvidence (D : DynamicLatticePackage) where
  domainWallsClosed : D.domainWalls
  flipDynamicsClosed : D.flipDynamics

def DynamicLatticeClosed (D : DynamicLatticePackage) : Prop :=
  D.domainWalls ∧ D.flipDynamics

theorem dynamic_lattice_closed_from_evidence (D : DynamicLatticePackage) (E : DynamicLatticeEvidence D) :
    DynamicLatticeClosed D := by
  exact And.intro E.domainWallsClosed E.flipDynamicsClosed

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse