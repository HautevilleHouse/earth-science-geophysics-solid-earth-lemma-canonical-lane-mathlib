import canonicalLaneMathlib.AdmissibleClass

/-!
# Mantle Convection Rheology Package
-/

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure MantleConvectionRheologyPackage {G : ThermalGradientPackage} {F : ViscosityModelPackage G} (C : BuoyancyDrivenFlowPackage F) where
  temperatureProfile : Prop
  viscosityStrainRateRelation : Prop
  rayleighNumber : Prop
  convectionCellStructure : Prop
  heatFluxSurface : Prop

structure MantleConvectionRheologyEvidence {G : ThermalGradientPackage} {F : ViscosityModelPackage G} {C : BuoyancyDrivenFlowPackage F}
    (M : MantleConvectionRheologyPackage C) where
  temperatureProfileClosed : M.temperatureProfile
  viscosityStrainRateRelationClosed : M.viscosityStrainRateRelation
  rayleighNumberClosed : M.rayleighNumber
  convectionCellStructureClosed : M.convectionCellStructure
  heatFluxSurfaceClosed : M.heatFluxSurface

def MantleConvectionRheologyClosed {G : ThermalGradientPackage} {F : ViscosityModelPackage G} {C : BuoyancyDrivenFlowPackage F}
    (M : MantleConvectionRheologyPackage C) : Prop :=
  M.temperatureProfile ∧ M.viscosityStrainRateRelation ∧ M.rayleighNumber ∧ M.convectionCellStructure ∧ M.heatFluxSurface

theorem mantle_convection_rheology_closed_from_evidence
    {G : ThermalGradientPackage} {F : ViscosityModelPackage G} {C : BuoyancyDrivenFlowPackage F}
    (M : MantleConvectionRheologyPackage C) (E : MantleConvectionRheologyEvidence M) :
    MantleConvectionRheologyClosed M := by
  exact And.intro E.temperatureProfileClosed
    (And.intro E.viscosityStrainRateRelationClosed
      (And.intro E.rayleighNumberClosed
        (And.intro E.convectionCellStructureClosed E.heatFluxSurfaceClosed)))

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse