import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure GlauberDynamicsPackage (M : KineticIsingSpinModel) where
  singleSpinFlipRate : Prop
  temperatureDependence : Prop
  transitionProbabilities : Type u

def GlauberDynamicsClosed (G : GlauberDynamicsPackage) : Prop :=
  G.singleSpinFlipRate ∧ G.temperatureDependence

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse