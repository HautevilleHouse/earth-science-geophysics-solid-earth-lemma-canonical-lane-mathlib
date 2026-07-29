import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure EarthStructureTomographyPackage where
  velocityModel : Prop
  inversionAlgorithm : Prop
  resolutionAnalysis : Prop
  uncertaintyQuantification : Prop

structure EarthStructureTomographyEvidence (T : EarthStructureTomographyPackage) where
  velocityModelClosed : T.velocityModel
  inversionAlgorithmClosed : T.inversionAlgorithm
  resolutionAnalysisClosed : T.resolutionAnalysis
  uncertaintyQuantificationClosed : T.uncertaintyQuantification

def EarthStructureTomographyClosed (T : EarthStructureTomographyPackage) : Prop :=
  T.velocityModel ∧ T.inversionAlgorithm ∧ T.resolutionAnalysis ∧ T.uncertaintyQuantification

theorem earth_structure_tomography_closed_from_evidence
    (T : EarthStructureTomographyPackage) (E : EarthStructureTomographyEvidence T) :
    EarthStructureTomographyClosed T := by
  exact And.intro E.velocityModelClosed
    (And.intro E.inversionAlgorithmClosed
      (And.intro E.resolutionAnalysisClosed E.uncertaintyQuantificationClosed))

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse