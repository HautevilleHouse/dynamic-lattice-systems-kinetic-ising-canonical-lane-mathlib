import DynamicLatticeSystemsKineticIsingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure SpinLattice where
  siteIndex : Type
  bondSet : Type
  latticeDimension : ℕ
  coordinationNumber : ℕ

structure SpinConfiguration (L : SpinLattice) where
  magnetization : L.siteIndex → ℤ
  support : Type
  boundarySupport : Prop

structure GlauberDynamicsPackage (L : SpinLattice) where
  flipRate : L.siteIndex → SpinConfiguration L → ℝ
  detailedBalance : Prop
  spinFlipGenerator : Prop
  ergodicity : Prop

def GlauberDynamicsClosed (L : SpinLattice) (G : GlauberDynamicsPackage L) : Prop :=
  G.detailedBalance ∧ G.spinFlipGenerator ∧ G.ergodicity

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse