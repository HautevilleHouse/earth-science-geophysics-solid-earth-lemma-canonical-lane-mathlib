import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure GeomagneticFieldGenerationPackage where
  dynamoEquations : Prop
  coreFluidDynamics : Prop
  magneticFieldEvolution : Prop
  polarityReversals : Prop
  secularVariation : Prop

structure GeomagneticFieldGenerationEvidence (G : GeomagneticFieldGenerationPackage) where
  dynamoEquationsClosed : G.dynamoEquations
  coreFluidDynamicsClosed : G.coreFluidDynamics
  magneticFieldEvolutionClosed : G.magneticFieldEvolution
  polarityReversalsClosed : G.polarityReversals
  secularVariationClosed : G.secularVariation

def GeomagneticFieldGenerationClosed (G : GeomagneticFieldGenerationPackage) : Prop :=
  G.dynamoEquations ∧ G.coreFluidDynamics ∧ G.magneticFieldEvolution ∧ G.polarityReversals ∧ G.secularVariation

theorem geomagnetic_field_generation_closed_from_evidence
    (G : GeomagneticFieldGenerationPackage) (E : GeomagneticFieldGenerationEvidence G) :
    GeomagneticFieldGenerationClosed G := by
  exact And.intro E.dynamoEquationsClosed
    (And.intro E.coreFluidDynamicsClosed
      (And.intro E.magneticFieldEvolutionClosed
        (And.intro E.polarityReversalsClosed E.secularVariationClosed)))

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse