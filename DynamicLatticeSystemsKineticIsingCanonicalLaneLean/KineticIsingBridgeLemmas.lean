import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DynamicLatticeBridgeClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  unfold DynamicLatticeBridgeClosed
  match h : A.object with
  | AdmittedLatticeObject D dynamics erg =>
    exact A.ergodicConclusion

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse