import DynamicLatticeSystemsKineticIsingCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  KinecticIsingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse