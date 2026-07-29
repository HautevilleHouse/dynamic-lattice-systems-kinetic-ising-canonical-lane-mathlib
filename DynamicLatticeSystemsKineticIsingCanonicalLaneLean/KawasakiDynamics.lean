import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure KawasakiDynamicsPackage (M : KineticIsingSpinModel) where
  spinExchangeRate : Prop
  conservedMagnetization : Prop
  hoppingProbabilities : Type u

def KawasakiDynamicsClosed (K : KawasakiDynamicsPackage) : Prop :=
  K.spinExchangeRate ∧ K.conservedMagnetization

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse