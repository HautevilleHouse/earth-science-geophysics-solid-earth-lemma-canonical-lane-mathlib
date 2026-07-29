import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure GeomagneticDynamoTheoryPackage where
  inductionEquation : Prop
  fluidCoreKinematics : Prop
  magneticFieldGeneration : Prop
  polarityReversals : Prop

structure GeomagneticDynamoTheoryEvidence (G : GeomagneticDynamoTheoryPackage) where
  inductionEquationClosed : G.inductionEquation
  fluidCoreKinematicsClosed : G.fluidCoreKinematics
  magneticFieldGenerationClosed : G.magneticFieldGeneration
  polarityReversalsClosed : G.polarityReversals

def GeomagneticDynamoTheoryClosed (G : GeomagneticDynamoTheoryPackage) : Prop :=
  G.inductionEquation ∧ G.fluidCoreKinematics ∧
  G.magneticFieldGeneration ∧ G.polarityReversals

theorem geomagnetic_dynamo_theory_closed_from_evidence
    (G : GeomagneticDynamoTheoryPackage) (Ev : GeomagneticDynamoTheoryEvidence G) :
    GeomagneticDynamoTheoryClosed G := by
  exact And.intro Ev.inductionEquationClosed
    (And.intro Ev.fluidCoreKinematicsClosed
      (And.intro Ev.magneticFieldGenerationClosed Ev.polarityReversalsClosed))

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse