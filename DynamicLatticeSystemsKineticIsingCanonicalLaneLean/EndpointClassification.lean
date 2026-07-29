import DynamicLatticeSystemsKineticIsingCanonicalLaneLean.SpinFlipSpectralGap

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure EndpointClassificationPackage where
  targetObservable : Type u
  stationaryMeasure : Prop
  mixingTime : ℝ
  spectralGapPositive : Prop

structure EndpointClassificationEvidence (Epkg : EndpointClassificationPackage) where
  stationaryMeasureClosed : Epkg.stationaryMeasure
  mixingTimeFinite : Epkg.mixingTime < ∞
  spectralGapPositiveClosed : Epkg.spectralGapPositive

def EndpointClassificationClosed (Epkg : EndpointClassificationPackage) : Prop :=
  Epkg.stationaryMeasure ∧ Epkg.spectralGapPositive

theorem endpoint_classification_closed_from_evidence
    (Epkg : EndpointClassificationPackage) (E : EndpointClassificationEvidence Epkg) :
    EndpointClassificationClosed Epkg := by
  exact And.intro E.stationaryMeasureClosed E.spectralGapPositiveClosed

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse