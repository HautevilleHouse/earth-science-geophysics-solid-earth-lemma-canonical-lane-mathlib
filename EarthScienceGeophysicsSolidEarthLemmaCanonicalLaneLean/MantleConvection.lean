import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemma

structure MantleConvectionPackage where
  navierStokesEquation : Prop
  buoyancyForce : Prop
  viscosityProfile : Prop
  thermalBoundaryLayer : Prop
  plateMotions : Prop
  navierStokesEquationClosed : navierStokesEquation
  buoyancyForceClosed : buoyancyForce
  viscosityProfileClosed : viscosityProfile
  thermalBoundaryLayerClosed : thermalBoundaryLayer
  plateMotionsClosed : plateMotions

structure MantleConvectionEvidence (M : MantleConvectionPackage) where
  navierStokesEquationClosed : M.navierStokesEquation
  buoyancyForceClosed : M.buoyancyForce
  viscosityProfileClosed : M.viscosityProfile
  thermalBoundaryLayerClosed : M.thermalBoundaryLayer
  plateMotionsClosed : M.plateMotions

def MantleConvectionClosed (M : MantleConvectionPackage) : Prop :=
  M.navierStokesEquation ∧ M.buoyancyForce ∧ M.viscosityProfile ∧
  M.thermalBoundaryLayer ∧ M.plateMotions

theorem mantle_convection_closed_from_evidence (M : MantleConvectionPackage)
    (E : MantleConvectionEvidence M) : MantleConvectionClosed M := by
  exact And.intro E.navierStokesEquationClosed
    (And.intro E.buoyancyForceClosed
      (And.intro E.viscosityProfileClosed
        (And.intro E.thermalBoundaryLayerClosed E.plateMotionsClosed)))

end EarthScienceGeophysicsSolidEarthLemma
end HautevilleHouse