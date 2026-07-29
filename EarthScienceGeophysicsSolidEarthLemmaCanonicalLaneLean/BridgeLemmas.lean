import EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SolidEarthWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse