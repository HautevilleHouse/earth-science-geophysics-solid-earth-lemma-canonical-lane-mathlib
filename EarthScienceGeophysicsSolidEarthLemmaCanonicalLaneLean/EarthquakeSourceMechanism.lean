import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure EarthquakeSourceMechanismPackage where
  faultGeometry : Prop
  momentTensor : Prop
  stressDrop : Prop
  rupturePropagation : Prop

structure EarthquakeSourceMechanismEvidence (E : EarthquakeSourceMechanismPackage) where
  faultGeometryClosed : E.faultGeometry
  momentTensorClosed : E.momentTensor
  stressDropClosed : E.stressDrop
  rupturePropagationClosed : E.rupturePropagation

def EarthquakeSourceMechanismClosed (E : EarthquakeSourceMechanismPackage) : Prop :=
  E.faultGeometry ∧ E.momentTensor ∧ E.stressDrop ∧ E.rupturePropagation

theorem earthquake_source_mechanism_closed_from_evidence
    (E : EarthquakeSourceMechanismPackage) (Ev : EarthquakeSourceMechanismEvidence E) :
    EarthquakeSourceMechanismClosed E := by
  exact And.intro Ev.faultGeometryClosed
    (And.intro Ev.momentTensorClosed
      (And.intro Ev.stressDropClosed Ev.rupturePropagationClosed))

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse