import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure LatticeNode where
  site : ℕ
  spin : ℤ₂

def flip (s : ℤ₂) : ℤ₂ := -s

theorem flip_involutive (s : ℤ₂) : flip (flip s) = s := by
  dsimp [flip]
  simp

structure KineticIsingConfig where
  sites : ℕ → ℤ₂
  finiteSupport : Finset ℕ → Prop

structure DynamicLatticeSystem (K : KineticIsingConfig) where
  hamiltonian : ℕ → ℝ
  coupling : ℕ × ℕ → ℝ
  externalField : ℕ → ℝ
  boundaryCondition : ℤ₂
  temperature : ℝ
  initialConfig : KineticIsingConfig

def GlauberDynamics (D : DynamicLatticeSystem K) : Prop :=
  ∀ n : ℕ, D.hamiltonian n = - D.externalField n * (D.initialConfig.sites n).toℝ - ∑ m, D.coupling (n,m) * (D.initialConfig.sites n).toℝ * (D.initialConfig.sites m).toℝ

def KawasakiDynamics (D : DynamicLatticeSystem K) : Prop :=
  ∀ n m : ℕ, D.coupling (n,m) = D.coupling (m,n)

structure AdmittedLatticeObject (D : DynamicLatticeSystem K) where
  object : D
  dynamicsType : GlauberDynamics D ∨ KawasakiDynamics D
  ergodicConclusion : Prop
  conclusion : ergodicConclusion

def DynamicLatticeBridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | AdmittedLatticeObject D _ erg -> A.ergodicConclusion

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse