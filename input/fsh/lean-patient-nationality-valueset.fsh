// This is a FSH file creating Lean Core patient-nationality ValueSet to manage the codes defined by SHDD
// SUSHI will look for definitions in any file using the .fsh ending.
ValueSet: LeanPatientNationalityValueSet
Id: lean-patient-nationality-valueset
Title: "Nationality (ISO 3166-1 Alpha-3 Subset)"
Description: "ValueSet for the Countries represented using ISO 3166-1 alpha-3 codes."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* insert CommonMedataRuleSet
* include codes from system ISO3166Part1Alpha3