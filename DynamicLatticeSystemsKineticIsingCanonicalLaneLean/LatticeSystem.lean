import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure LatticeSystem where
  siteType : Type u
  neighborRelation : siteType → siteType → Prop
  spinSpace : siteType → Type v
  symmetryGroup : Type w
  latticeDimension : Nat
  translationInvariant : Prop
  finiteRange : Prop

def LatticeSystemClosed (L : LatticeSystem) : Prop :=
  L.translationInvariant ∧ L.finiteRange

structure LatticeSystemAdmittedObject where
  system : LatticeSystem
  admissible : Prop
  conclusion : admissible

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse