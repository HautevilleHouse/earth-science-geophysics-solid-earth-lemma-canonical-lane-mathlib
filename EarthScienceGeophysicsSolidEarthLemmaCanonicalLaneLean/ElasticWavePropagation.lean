import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure ElasticWaveParameters where
  waveSpeedP : ℝ
  waveSpeedS : ℝ
  densityProfile : Type u
  attenuationModel : Prop
  anisotropy : Prop
  waveSpeedPPositive : waveSpeedP > 0
  waveSpeedSPositive : waveSpeedS > 0
  densityProfileTerm : densityProfile
  attenuationModelTerm : attenuationModel
  anisotropyTerm : anisotropy

structure ElasticWavePropagationEvidence (W : ElasticWaveParameters) where
  attenuationModelClosed : W.attenuationModel
  anisotropyClosed : W.anisotropy

def ElasticWavePropagationClosed (W : ElasticWaveParameters) : Prop :=
  W.attenuationModel ∧ W.anisotropy

theorem elastic_wave_propagation_closed_from_evidence (W : ElasticWaveParameters) (E : ElasticWavePropagationEvidence W) :
    ElasticWavePropagationClosed W := by
  exact And.intro E.attenuationModelClosed E.anisotropyClosed

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse