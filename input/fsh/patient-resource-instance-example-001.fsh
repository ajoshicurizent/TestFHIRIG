// This is a FSH file creating Lean Core patient resource instance example generated through FDH
// SUSHI will look for definitions in any file using the .fsh ending.
Instance: patient-example-001
InstanceOf: LeanCorePatientProfile
Usage: #example
Title: "John Cena"
Description: "sample Patient resource instance to test the Lean Core Patient profile"
* meta.profile = "http://lean.sa/fhir/lean/core/StructureDefinition/lean-core-patient"
//we can provide extension profile id or name or url and same is true for CodeSystem, below example mentions extension id and CodeSystem name
* extension[lean-patient-gender-extension].valueCodeableConcept = LeanPatientGenderCodeSystem|0.0.1#M "Male"
* extension[LeanPatientNationalityExtension].extension[code].valueCodeableConcept = ISO3166Part1Alpha3|0.0.1#SAU "Saudi Arabia"
//can use slice name for the extension but for that we have to say InstanceOf: <PatientProfileName>

* active = true
* gender = #male 
* birthDate = "1990-05-15"
//Patient unique identiifers, nationalId is a sliceName
* identifier[nationalId].system = "http://lean.sa/fhir/moi/patidentifier/nid"
* identifier[nationalId].value = "1234567891"

* insert Name(Robert, Smith)
//Arabic name showing that given repetitions can handle Father's (Hassan) and Grandfather's (Al-Masry) name.
* name[+].extension[LeanHumanLanguageExtension].valueCode = #en
* name[=].family = "Al Saud"
* name[=].given = "Khalid"
* name[=].given = "Saeed"
* name[=].given = "Abdulaziz"
* name[=].prefix = "Mr."
* name[=].use = #official
//equivalent arabic name 
* name[+]
  * extension[LeanHumanLanguageExtension].valueCode = #ar
  * family = "آل سعود"
  * given = "خالد"
  * given = "سعيد"
  * given = "عبدالعزيز"
  * prefix = "السيد."
  * use = #official

//telecom slices 
* telecom[phoneNumber].system = #phone
* telecom[phoneNumber].value = "098 123 4567"
* telecom[phoneNumber].use = #mobile