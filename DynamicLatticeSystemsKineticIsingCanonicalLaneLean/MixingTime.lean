import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicLatticeSystemsKineticIsingCanonicalLaneLean.GlauberDynamics

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure MixingTimePackage (L : LatticeSystem) (G : GlauberDynamics L) where
  mixingTime : ℕ
  spectralGapBound : ℝ
  logarithmicSobolevConstant : ℝ
  upperBoundMixingTime : Prop
  lowerBoundMixingTime : Prop

def MixingTimeClosed (L : LatticeSystem) (G : GlauberDynamics L) (M : MixingTimePackage L G) : Prop :=
  M.upperBoundMixingTime ∧ M.lowerBoundMixingTime

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse