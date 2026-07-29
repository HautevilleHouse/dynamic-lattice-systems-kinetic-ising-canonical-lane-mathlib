import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure MasterEquationPackage (M : KineticIsingSpinModel) where
  transitionRates : Type u
  probabilityDistribution : Type v
  detailedBalanceCondition : Prop
  generatorMatrix : Type w

def MasterEquationClosed (P : MasterEquationPackage) : Prop :=
  P.detailedBalanceCondition

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse