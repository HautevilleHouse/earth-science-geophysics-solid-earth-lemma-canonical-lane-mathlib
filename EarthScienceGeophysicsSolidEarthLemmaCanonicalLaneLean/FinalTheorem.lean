import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean.BridgeLemmas
import EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

def ConstrainedGeophysicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geophysics_endgame (A : AdmissibleClass) :
    ConstrainedGeophysicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse