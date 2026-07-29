import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemma

structure CrustalDeformationPackage where
  faultSlipModel : Prop
  elasticDislocation : Prop
  stressAccumulation : Prop
  earthquakeCycle : Prop
  gpsStrainRates : Prop
  faultSlipModelClosed : faultSlipModel
  elasticDislocationClosed : elasticDislocation
  stressAccumulationClosed : stressAccumulation
  earthquakeCycleClosed : earthquakeCycle
  gpsStrainRatesClosed : gpsStrainRates

structure CrustalDeformationEvidence (C : CrustalDeformationPackage) where
  faultSlipModelClosed : C.faultSlipModel
  elasticDislocationClosed : C.elasticDislocation
  stressAccumulationClosed : C.stressAccumulation
  earthquakeCycleClosed : C.earthquakeCycle
  gpsStrainRatesClosed : C.gpsStrainRates

def CrustalDeformationClosed (C : CrustalDeformationPackage) : Prop :=
  C.faultSlipModel ∧ C.elasticDislocation ∧ C.stressAccumulation ∧
  C.earthquakeCycle ∧ C.gpsStrainRates

theorem crustal_deformation_closed_from_evidence (C : CrustalDeformationPackage)
    (E : CrustalDeformationEvidence C) : CrustalDeformationClosed C := by
  exact And.intro E.faultSlipModelClosed
    (And.intro E.elasticDislocationClosed
      (And.intro E.stressAccumulationClosed
        (And.intro E.earthquakeCycleClosed E.gpsStrainRatesClosed)))

end EarthScienceGeophysicsSolidEarthLemma
end HautevilleHouse