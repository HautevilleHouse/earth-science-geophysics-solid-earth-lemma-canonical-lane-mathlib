import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure CrustalDeformationMechanicsPackage where
  elasticStressStrain : Prop
  faultSlipModels : Prop
  earthquakeCycle : Prop
  viscoelasticRelaxation : Prop
  geodeticObservations : Prop

structure CrustalDeformationMechanicsEvidence (C : CrustalDeformationMechanicsPackage) where
  elasticStressStrainClosed : C.elasticStressStrain
  faultSlipModelsClosed : C.faultSlipModels
  earthquakeCycleClosed : C.earthquakeCycle
  viscoelasticRelaxationClosed : C.viscoelasticRelaxation
  geodeticObservationsClosed : C.geodeticObservations

def CrustalDeformationMechanicsClosed (C : CrustalDeformationMechanicsPackage) : Prop :=
  C.elasticStressStrain ∧ C.faultSlipModels ∧ C.earthquakeCycle ∧ C.viscoelasticRelaxation ∧ C.geodeticObservations

theorem crustal_deformation_mechanics_closed_from_evidence
    (C : CrustalDeformationMechanicsPackage) (E : CrustalDeformationMechanicsEvidence C) :
    CrustalDeformationMechanicsClosed C := by
  exact And.intro E.elasticStressStrainClosed
    (And.intro E.faultSlipModelsClosed
      (And.intro E.earthquakeCycleClosed
        (And.intro E.viscoelasticRelaxationClosed E.geodeticObservationsClosed)))

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse