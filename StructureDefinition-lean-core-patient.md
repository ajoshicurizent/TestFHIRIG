# Lean Core Patient Profile - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lean Core Patient Profile**

## Resource Profile: Lean Core Patient Profile 

| | |
| :--- | :--- |
| *Official URL*:http://lean.sa/fhir/lean/core/StructureDefinition/lean-core-patient | *Version*:0.0.1 |
| Draft as of 2025-11-25 | *Computable Name*:LeanCorePatientProfile |
| **Copyright/Legal**: Used by permission of Lean Business Services. | |

 
The Lean Core Patient Profile inherits from the FHIR Patient resource. refer to it for scope and usage definitions. This profile meets the requirements of the KSA Patient demographic data set- Need further details here. It sets minimum expectations for the Patient resource to record, search, and fetch basic demographics and other administrative information about an individual patient. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. Providing the floor for standards development for specific use cases promotes interoperability and adoption. 

 
Base for core Patient profile for Lean FHIR server. 

**Usages:**

* Examples for this Profile: [Patient/patient-example-001](Patient-patient-example-001.md)
* CapabilityStatements using this Profile: [Lean Core Capability Statement](CapabilityStatement-LeanCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/my.first.sushi.project|current/StructureDefinition/lean-core-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lean-core-patient.csv), [Excel](StructureDefinition-lean-core-patient.xlsx), [Schematron](StructureDefinition-lean-core-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lean-core-patient",
  "url" : "http://lean.sa/fhir/lean/core/StructureDefinition/lean-core-patient",
  "version" : "0.0.1",
  "name" : "LeanCorePatientProfile",
  "title" : "Lean Core Patient Profile",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-11-25T15:32:46+03:00",
  "publisher" : "Lean Business Service, KSA",
  "contact" : [
    {
      "name" : "Lean Business Service, KSA",
      "telecom" : [
        {
          "system" : "email",
          "value" : "https://lean.sa/"
        }
      ]
    }
  ],
  "description" : "The Lean Core Patient Profile inherits from the FHIR Patient resource. refer to it for scope and usage definitions. This profile meets the requirements of the KSA Patient demographic data set- Need further details here. It sets minimum expectations for the Patient resource to record, search, and fetch basic demographics and other administrative information about an individual patient. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. Providing the floor for standards development for specific use cases promotes interoperability and adoption.",
  "purpose" : "Base for core Patient profile for Lean FHIR server.",
  "copyright" : "Used by permission of Lean Business Services. ",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.extension:patientNationality",
        "path" : "Patient.extension",
        "sliceName" : "patientNationality",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://lean.sa/fhir/lean/core/StructureDefinition/lean-patient-nationality-extension"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:patientGender",
        "path" : "Patient.extension",
        "sliceName" : "patientGender",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://lean.sa/fhir/lean/core/StructureDefinition/lean-patient-gender-extension"
            ]
          }
        ]
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "description" : "Based on the system property, differentiate various patient business identifiers.",
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Patient.identifier.system",
        "path" : "Patient.identifier.system",
        "min" : 1
      },
      {
        "id" : "Patient.identifier.value",
        "path" : "Patient.identifier.value",
        "min" : 1
      },
      {
        "id" : "Patient.identifier:nationalId",
        "path" : "Patient.identifier",
        "sliceName" : "nationalId",
        "short" : "National Identifier for the patient like National Id or Iqama or Border Number.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.identifier:nationalId.system",
        "path" : "Patient.identifier.system",
        "patternUri" : "http://lean.sa/fhir/moi/patidentifier/nid"
      },
      {
        "id" : "Patient.active",
        "path" : "Patient.active",
        "min" : 1
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "min" : 1
      },
      {
        "id" : "Patient.name.extension:patientNameLanguage",
        "path" : "Patient.name.extension",
        "sliceName" : "patientNameLanguage",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://lean.sa/fhir/lean/core/StructureDefinition/lean-human-language-extension"
            ]
          }
        ]
      },
      {
        "id" : "Patient.name.family",
        "path" : "Patient.name.family",
        "min" : 1
      },
      {
        "id" : "Patient.name.given",
        "path" : "Patient.name.given",
        "min" : 1
      },
      {
        "id" : "Patient.telecom",
        "path" : "Patient.telecom",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "description" : "telecom can have email, phone number etc. At least one of the telecom repetitions shall have phone number.",
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Patient.telecom.system",
        "path" : "Patient.telecom.system",
        "min" : 1
      },
      {
        "id" : "Patient.telecom.value",
        "path" : "Patient.telecom.value",
        "min" : 1
      },
      {
        "id" : "Patient.telecom:phoneNumber",
        "path" : "Patient.telecom",
        "sliceName" : "phoneNumber",
        "short" : "Patient phone number- landline or mobile.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.telecom:phoneNumber.system",
        "path" : "Patient.telecom.system",
        "patternCode" : "phone"
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "min" : 1
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "min" : 1
      }
    ]
  }
}

```
