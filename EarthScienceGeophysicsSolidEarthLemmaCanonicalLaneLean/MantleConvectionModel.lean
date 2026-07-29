import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure MantleConvectionModel where
  mantleDomain : Type u
  temperatureField : Type v
  velocityField : Type w
  viscosityField : Type x
  rayleighNumber : ℝ
  conservationLaws : Prop
  boundaryConditions : Prop
  initialCondition : Prop
  conservationLawsTerm : conservationLaws
  boundaryConditionsTerm : boundaryConditions
  initialConditionTerm : initialCondition

structure MantleConvectionEvidence (M : MantleConvectionModel) where
  conservationLawsClosed : M.conservationLaws
  boundaryConditionsClosed : M.boundaryConditions
  initialConditionClosed : M.initialCondition

def MantleConvectionClosed (M : MantleConvectionModel) : Prop :=
  M.conservationLaws ∧ M.boundaryConditions ∧ M.initialCondition

theorem mantle_convection_closed_from_evidence (M : MantleConvectionModel) (E : MantleConvectionEvidence M) :
    MantleConvectionClosed M := by
  exact And.intro E.conservationLawsClosed (And.intro E.boundaryConditionsClosed E.initialConditionClosed)

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse