import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthLemma

structure GeomagneticDynamoPackage where
  inductionEquation : Prop
  coreFlowModel : Prop
  magneticPoleReversals : Prop
  selfExcitationCondition : Prop
  dipoleMoment : Prop
  inductionEquationClosed : inductionEquation
  coreFlowModelClosed : coreFlowModel
  magneticPoleReversalsClosed : magneticPoleReversals
  selfExcitationConditionClosed : selfExcitationCondition
  dipoleMomentClosed : dipoleMoment

structure GeomagneticDynamoEvidence (D : GeomagneticDynamoPackage) where
  inductionEquationClosed : D.inductionEquation
  coreFlowModelClosed : D.coreFlowModel
  magneticPoleReversalsClosed : D.magneticPoleReversals
  selfExcitationConditionClosed : D.selfExcitationCondition
  dipoleMomentClosed : D.dipoleMoment

def GeomagneticDynamoClosed (D : GeomagneticDynamoPackage) : Prop :=
  D.inductionEquation ∧ D.coreFlowModel ∧ D.magneticPoleReversals ∧
  D.selfExcitationCondition ∧ D.dipoleMoment

theorem geomagnetic_dynamo_closed_from_evidence (D : GeomagneticDynamoPackage)
    (E : GeomagneticDynamoEvidence D) : GeomagneticDynamoClosed D := by
  exact And.intro E.inductionEquationClosed
    (And.intro E.coreFlowModelClosed
      (And.intro E.magneticPoleReversalsClosed
        (And.intro E.selfExcitationConditionClosed E.dipoleMomentClosed)))

end EarthScienceGeophysicsSolidEarthLemma
end HautevilleHouse