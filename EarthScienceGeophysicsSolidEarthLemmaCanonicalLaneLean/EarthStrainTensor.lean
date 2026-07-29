import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemma

structure StrainTensorPackage where
  strainRateTensor : Type u
  stressTensor : Type v
  constitutiveRelation : Prop
  elasticModuli : Prop
  viscousCompliance : Prop
  strainRateTensorDefined : strainRateTensor
  stressTensorDefined : stressTensor
  constitutiveRelationClosed : constitutiveRelation
  elasticModuliClosed : elasticModuli
  viscousComplianceClosed : viscousCompliance

structure StrainTensorEvidence (S : StrainTensorPackage) where
  strainRateTensorClosed : S.strainRateTensor
  stressTensorClosed : S.stressTensor
  constitutiveRelationClosed : S.constitutiveRelation
  elasticModuliClosed : S.elasticModuli
  viscousComplianceClosed : S.viscousCompliance

def StrainTensorClosed (S : StrainTensorPackage) : Prop :=
  S.strainRateTensor ∧ S.stressTensor ∧ S.constitutiveRelation ∧
  S.elasticModuli ∧ S.viscousCompliance

theorem strain_tensor_closed_from_evidence (S : StrainTensorPackage)
    (E : StrainTensorEvidence S) : StrainTensorClosed S := by
  exact And.intro E.strainRateTensorClosed
    (And.intro E.stressTensorClosed
      (And.intro E.constitutiveRelationClosed
        (And.intro E.elasticModuliClosed E.viscousComplianceClosed)))

end EarthScienceGeophysicsSolidEarthLemma
end HautevilleHouse