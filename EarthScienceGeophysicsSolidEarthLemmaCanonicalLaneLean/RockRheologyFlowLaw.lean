import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean

structure RockRheologyFlowLaw where
  stressTensor : Type u
  strainRateTensor : Type v
  temperatureDependence : Prop
  pressureDependence : Prop
  grainSizeDependence : Prop
  creepMechanism : Prop
  constitutiveEquation : Prop
  temperatureDependenceTerm : temperatureDependence
  pressureDependenceTerm : pressureDependence
  grainSizeDependenceTerm : grainSizeDependence
  creepMechanismTerm : creepMechanism
  constitutiveEquationTerm : constitutiveEquation

structure RockRheologyEvidence (R : RockRheologyFlowLaw) where
  temperatureDependenceClosed : R.temperatureDependence
  pressureDependenceClosed : R.pressureDependence
  grainSizeDependenceClosed : R.grainSizeDependence
  creepMechanismClosed : R.creepMechanism
  constitutiveEquationClosed : R.constitutiveEquation

def RockRheologyClosed (R : RockRheologyFlowLaw) : Prop :=
  R.temperatureDependence ∧ R.pressureDependence ∧ R.grainSizeDependence ∧ R.creepMechanism ∧ R.constitutiveEquation

theorem rock_rheology_closed_from_evidence (R : RockRheologyFlowLaw) (E : RockRheologyEvidence R) :
    RockRheologyClosed R := by
  exact And.intro E.temperatureDependenceClosed
    (And.intro E.pressureDependenceClosed
      (And.intro E.grainSizeDependenceClosed
        (And.intro E.creepMechanismClosed E.constitutiveEquationClosed)))

end EarthScienceGeophysicsSolidEarthLemmaCanonicalLaneLean
end HautevilleHouse