import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure GeodeticStrainRateField where
  velocityField : Type u
  strainRateTensor : Type v
  spatialCoverage : Prop
  temporalSampling : Prop
  noiseModel : Prop
  spatialCoverageTerm : spatialCoverage
  temporalSamplingTerm : temporalSampling
  noiseModelTerm : noiseModel

structure GeodeticStrainEvidence (G : GeodeticStrainRateField) where
  spatialCoverageClosed : G.spatialCoverage
  temporalSamplingClosed : G.temporalSampling
  noiseModelClosed : G.noiseModel

def GeodeticStrainClosed (G : GeodeticStrainRateField) : Prop :=
  G.spatialCoverage ∧ G.temporalSampling ∧ G.noiseModel

theorem geodetic_strain_closed_from_evidence (G : GeodeticStrainRateField) (E : GeodeticStrainEvidence G) :
    GeodeticStrainClosed G := by
  exact And.intro E.spatialCoverageClosed (And.intro E.temporalSamplingClosed E.noiseModelClosed)

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse