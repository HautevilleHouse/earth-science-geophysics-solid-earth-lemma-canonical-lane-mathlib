import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure MantleConvectionDynamicsPackage where
  navierStokesEquations : Prop
  thermalGradients : Prop
  viscosityProfile : Prop
  plumeFormation : Prop
  plateTectonicsCoupling : Prop

structure MantleConvectionDynamicsEvidence (M : MantleConvectionDynamicsPackage) where
  navierStokesEquationsClosed : M.navierStokesEquations
  thermalGradientsClosed : M.thermalGradients
  viscosityProfileClosed : M.viscosityProfile
  plumeFormationClosed : M.plumeFormation
  plateTectonicsCouplingClosed : M.plateTectonicsCoupling

def MantleConvectionDynamicsClosed (M : MantleConvectionDynamicsPackage) : Prop :=
  M.navierStokesEquations ∧ M.thermalGradients ∧ M.viscosityProfile ∧ M.plumeFormation ∧ M.plateTectonicsCoupling

theorem mantle_convection_dynamics_closed_from_evidence
    (M : MantleConvectionDynamicsPackage) (E : MantleConvectionDynamicsEvidence M) :
    MantleConvectionDynamicsClosed M := by
  exact And.intro E.navierStokesEquationsClosed
    (And.intro E.thermalGradientsClosed
      (And.intro E.viscosityProfileClosed
        (And.intro E.plumeFormationClosed E.plateTectonicsCouplingClosed)))

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse