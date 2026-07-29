import EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : SolidEarthAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SolidEarthWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse