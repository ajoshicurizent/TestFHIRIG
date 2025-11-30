// This is a FSH file creating Lean Core Patient profile.
// The intent is to create the same profile created through the firely forge tool
// Firely forge is a paid and expensive tool so we shall be able to create the profiles using FSH and SUSHI which are free tools
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: LeanCorePatientProfile
Parent: Patient
Id: lean-core-patient
Title: "Lean Core Patient Profile"
Description: "The Lean Core Patient Profile inherits from the FHIR Patient resource. refer to it for scope and usage definitions. This profile meets the requirements of the KSA Patient demographic data set- Need further details here. It sets minimum expectations for the Patient resource to record, search, and fetch basic demographics and other administrative information about an individual patient. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. Providing the floor for standards development for specific use cases promotes interoperability and adoption."
* insert CommonMedataRuleSet
* ^purpose = "Base for core Patient profile for Lean FHIR server."
* extension contains LeanPatientNationalityExtension named patientNationality 0..*
* extension contains LeanGenderExtension named patientGender 0..1
* active 1..1
* identifier 1..*
* identifier
* identifier.system 1..1
* identifier.value 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Based on the system property, differentiate various patient business identifiers."
* identifier ^slicing.ordered = false
* identifier contains 
    nationalId 1..1
* identifier[nationalId] ^short = "National Identifier for the patient like National Id or Iqama or Border Number."
* identifier[nationalId].system = "http://lean.sa/fhir/moi/patidentifier/nid"
* identifier[nationalId].value 1..1
* name 1..*
* name.given 1..*
* name.family 1..1
* name.extension contains LeanHumanLanguageExtension named patientNameLanguage 0..1
* gender 1..1
* birthDate 1..1
* telecom 1..* 
* telecom.system 1..1
* telecom.value 1..1
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = "telecom can have email, phone number etc. At least one of the telecom repetitions shall have phone number."
* telecom ^slicing.ordered = false
* telecom contains 
     phoneNumber 1..1
* telecom[phoneNumber] ^short = "Patient phone number- landline or mobile."
* telecom[phoneNumber].system = #phone
* telecom[phoneNumber].value 1..1




