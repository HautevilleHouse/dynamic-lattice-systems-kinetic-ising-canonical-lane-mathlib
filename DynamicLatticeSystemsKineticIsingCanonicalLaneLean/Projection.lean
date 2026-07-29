import DynamicLatticeSystemsKineticIsingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def kinecticIsingProjection : Projection KinecticIsingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem kinectic_ising_projection_idempotent (x : KinecticIsingEndgameState) :
    kinecticIsingProjection.toFun (kinecticIsingProjection.toFun x) = kinecticIsingProjection.toFun x := by
  exact kinecticIsingProjection.idempotent x

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse