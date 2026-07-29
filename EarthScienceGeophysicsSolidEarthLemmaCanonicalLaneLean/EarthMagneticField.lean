import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure GeodynamoPackage where
  inductionEquation : Type u
  outerCoreFlow : Type v
  magneticDiffusivity : Prop
  dynamoAction : Prop
  polarityReversals : Prop

structure GeodynamoEvidence (G : GeodynamoPackage) where
  magneticDiffusivityClosed : G.magneticDiffusivity
  dynamoActionClosed : G.dynamoAction
  polarityReversalsClosed : G.polarityReversals

def GeodynamoClosed (G : GeodynamoPackage) : Prop :=
  G.magneticDiffusivity ∧ G.dynamoAction ∧ G.polarityReversals

theorem geodynamo_closed_from_evidence
    (G : GeodynamoPackage) (E : GeodynamoEvidence G) :
    GeodynamoClosed G := by
  exact And.intro E.magneticDiffusivityClosed (And.intro E.dynamoActionClosed E.polarityReversalsClosed)

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse