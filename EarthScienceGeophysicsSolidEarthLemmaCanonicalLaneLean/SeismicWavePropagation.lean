import canonicalLaneMathlib.AdmissibleClass

/-!
# Seismic Wave Propagation Package
-/

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure SeismicWavePropagationPackage {G : CrustalModelPackage} {F : MantleElasticityPackage G} (S : SourceMechanismPackage F) where
  pWaveSpeed : Prop
  sWaveSpeed : Prop
  rayPathGeometry : Prop
  attenuationModel : Prop
  travelTimeTomography : Prop

structure SeismicWavePropagationEvidence {G : CrustalModelPackage} {F : MantleElasticityPackage G} {S : SourceMechanismPackage F}
    (W : SeismicWavePropagationPackage S) where
  pWaveSpeedClosed : W.pWaveSpeed
  sWaveSpeedClosed : W.sWaveSpeed
  rayPathGeometryClosed : W.rayPathGeometry
  attenuationModelClosed : W.attenuationModel
  travelTimeTomographyClosed : W.travelTimeTomography

def SeismicWavePropagationClosed {G : CrustalModelPackage} {F : MantleElasticityPackage G} {S : SourceMechanismPackage F}
    (W : SeismicWavePropagationPackage S) : Prop :=
  W.pWaveSpeed ∧ W.sWaveSpeed ∧ W.rayPathGeometry ∧ W.attenuationModel ∧ W.travelTimeTomography

theorem seismic_wave_propagation_closed_from_evidence
    {G : CrustalModelPackage} {F : MantleElasticityPackage G} {S : SourceMechanismPackage F}
    (W : SeismicWavePropagationPackage S) (E : SeismicWavePropagationEvidence W) :
    SeismicWavePropagationClosed W := by
  exact And.intro E.pWaveSpeedClosed
    (And.intro E.sWaveSpeedClosed
      (And.intro E.rayPathGeometryClosed
        (And.intro E.attenuationModelClosed E.travelTimeTomographyClosed)))

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse