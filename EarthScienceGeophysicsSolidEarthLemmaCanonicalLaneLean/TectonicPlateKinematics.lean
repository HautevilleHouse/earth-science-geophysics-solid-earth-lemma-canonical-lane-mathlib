import canonicalLaneMathlib.AdmissibleClass

/-!
# Tectonic Plate Kinematics Package
-/

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure KinematicPlateVelocity {G : RiftZonePackage} {F : MantleConvectionPackage G} (P : PlateBoundaryPackage F) where
  relativeVelocityVector : Type u
  eulerPole : Type v
  angularVelocity : Type w
  plateMotionConsistent : Prop
  divergenceRate : Prop
  transformSlipRate : Prop
  convergenceRate : Prop

structure KinematicPlateVelocityEvidence {G : RiftZonePackage} {F : MantleConvectionPackage G} {P : PlateBoundaryPackage F}
    (K : KinematicPlateVelocity P) where
  plateMotionConsistentClosed : K.plateMotionConsistent
  divergenceRateClosed : K.divergenceRate
  transformSlipRateClosed : K.transformSlipRate
  convergenceRateClosed : K.convergenceRate

def KinematicPlateVelocityClosed {G : RiftZonePackage} {F : MantleConvectionPackage G} {P : PlateBoundaryPackage F}
    (K : KinematicPlateVelocity P) : Prop :=
  K.plateMotionConsistent ∧ K.divergenceRate ∧ K.transformSlipRate ∧ K.convergenceRate

theorem kinematic_plate_velocity_closed_from_evidence
    {G : RiftZonePackage} {F : MantleConvectionPackage G} {P : PlateBoundaryPackage F}
    (K : KinematicPlateVelocity P) (E : KinematicPlateVelocityEvidence K) :
    KinematicPlateVelocityClosed K := by
  exact And.intro E.plateMotionConsistentClosed
    (And.intro E.divergenceRateClosed
      (And.intro E.transformSlipRateClosed E.convergenceRateClosed))

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse