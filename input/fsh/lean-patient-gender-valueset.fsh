// This is a FSH file creating Lean Core Gender ValueSet to manage the codes defined by SHDD
// SUSHI will look for definitions in any file using the .fsh ending.
ValueSet: LeanPatientGenderValueSet
Id: lean-patient-gender-valueset
Title: "Gender (Saudi-Health-Data-Dictionary-v2 sex)"
Description: "ValueSet for the Saudi-Health-Data-Dictionary-v2 gender codes."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* insert CommonMedataRuleSet
* include codes from system LeanPatientGenderCodeSystem