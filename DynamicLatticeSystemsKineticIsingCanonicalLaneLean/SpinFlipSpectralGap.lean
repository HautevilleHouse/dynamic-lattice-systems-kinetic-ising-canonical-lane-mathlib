import DynamicLatticeSystemsKineticIsingCanonicalLaneLean.KineticIsingSpinDynamics

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure SpinFlipSpectralGapPackage (L : SpinLattice) where
  infinitesimalGenerator : Type
  dirichletForm : Type
  spectralGapValue : ℝ
  poincareInequality : Prop
  spectralGapPositive : spectralGapValue > 0

structure SpinFlipSpectralGapEvidence (L : SpinLattice) (S : SpinFlipSpectralGapPackage L) where
  poincareInequalityClosed : S.poincareInequality

def SpinFlipSpectralGapClosed (L : SpinLattice) (S : SpinFlipSpectralGapPackage L) : Prop :=
  S.spectralGapPositive ∧ S.poincareInequality

theorem spin_flip_spectral_gap_closed_from_evidence
    (L : SpinLattice) (S : SpinFlipSpectralGapPackage L)
    (E : SpinFlipSpectralGapEvidence L S) :
    SpinFlipSpectralGapClosed L S := by
  exact And.intro S.spectralGapPositive E.poincareInequalityClosed

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse