import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemma

structure FaultMechanicsPackage where
  coulombFailureCriterion : Prop
  frictionLaw : Prop
  porePressureEffect : Prop
  rupturePropagation : Prop
  aftershockSequence : Prop
  coulombFailureCriterionClosed : coulombFailureCriterion
  frictionLawClosed : frictionLaw
  porePressureEffectClosed : porePressureEffect
  rupturePropagationClosed : rupturePropagation
  aftershockSequenceClosed : aftershockSequence

structure FaultMechanicsEvidence (F : FaultMechanicsPackage) where
  coulombFailureCriterionClosed : F.coulombFailureCriterion
  frictionLawClosed : F.frictionLaw
  porePressureEffectClosed : F.porePressureEffect
  rupturePropagationClosed : F.rupturePropagation
  aftershockSequenceClosed : F.aftershockSequence

def FaultMechanicsClosed (F : FaultMechanicsPackage) : Prop :=
  F.coulombFailureCriterion ∧ F.frictionLaw ∧ F.porePressureEffect ∧
  F.rupturePropagation ∧ F.aftershockSequence

theorem fault_mechanics_closed_from_evidence (F : FaultMechanicsPackage)
    (E : FaultMechanicsEvidence F) : FaultMechanicsClosed F := by
  exact And.intro E.coulombFailureCriterionClosed
    (And.intro E.frictionLawClosed
      (And.intro E.porePressureEffectClosed
        (And.intro E.rupturePropagationClosed E.aftershockSequenceClosed)))

end EarthScienceGeophysicsSolidEarthLemma
end HautevilleHouse