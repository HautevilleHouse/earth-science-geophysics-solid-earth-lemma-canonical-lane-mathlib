import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure PlateTectonicsPackage where
  crustalDeformation : Type u
  faultMechanics : Type v
  earthquakeCycle : Prop
  seafloorSpreading : Prop
  subductionZone : Prop

structure PlateTectonicsEvidence (P : PlateTectonicsPackage) where
  earthquakeCycleClosed : P.earthquakeCycle
  seafloorSpreadingClosed : P.seafloorSpreading
  subductionZoneClosed : P.subductionZone

def PlateTectonicsClosed (P : PlateTectonicsPackage) : Prop :=
  P.earthquakeCycle ∧ P.seafloorSpreading ∧ P.subductionZone

theorem plate_tectonics_closed_from_evidence
    (P : PlateTectonicsPackage) (E : PlateTectonicsEvidence P) :
    PlateTectonicsClosed P := by
  exact And.intro E.earthquakeCycleClosed (And.intro E.seafloorSpreadingClosed E.subductionZoneClosed)

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse