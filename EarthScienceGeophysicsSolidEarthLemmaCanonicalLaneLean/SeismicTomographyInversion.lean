import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure SeismicTomographyInversion where
  travelTimeData : Type u
  sourceModel : Type v
  rayPathGeometry : Type w
  inversionAlgorithm : Prop
  uniquenessGuarantee : Prop
  convergenceRate : ℝ
  inversionAlgorithmTerm : inversionAlgorithm
  uniquenessGuaranteeTerm : uniquenessGuarantee
  convergenceRatePositive : convergenceRate > 0

structure SeismicTomographyEvidence (S : SeismicTomographyInversion) where
  inversionAlgorithmClosed : S.inversionAlgorithm
  uniquenessGuaranteeClosed : S.uniquenessGuarantee

def SeismicTomographyClosed (S : SeismicTomographyInversion) : Prop :=
  S.inversionAlgorithm ∧ S.uniquenessGuarantee

theorem seismic_tomography_closed_from_evidence (S : SeismicTomographyInversion) (E : SeismicTomographyEvidence S) :
    SeismicTomographyClosed S := by
  exact And.intro E.inversionAlgorithmClosed E.uniquenessGuaranteeClosed

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse