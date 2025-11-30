// This is a FSH file creating Lean Core Gender extension to manage the codes defined by SHDD
// SUSHI will look for definitions in any file using the .fsh ending.
Extension: LeanGenderExtension
Id: lean-patient-gender-extension
Title: "Patient Gender Extension"
Description: "To map and write gender codes defined by the Saudi-Health-Data-Dictionary-v2.pdf. There are additional codes than just male and female defined by this specification. Use this extension along with Patient.gender element. Saudi-Health-Data-Dictionary-v2.pdf includes a data element for Sex, intended to support the exchange of a recorded sex value. This extension aligns with this definition of Sex: This field contains a code which defines the sex of the patient. It enables systems to share the sex value as it was documented in a particular context."
Context: Patient
* insert CommonMedataRuleSet
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from LeanPatientGenderValueSet (required)