# John Cena - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **John Cena**

## Example Patient: John Cena

Profile: [Lean Core Patient Profile](StructureDefinition-lean-core-patient.md)

Abdulaziz Al Saud (official) Male, DoB: 1990-05-15 ( http://lean.sa/fhir/moi/patidentifier/nid#1234567891)

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | ph: 098 123 4567(Mobile) |
| Lean Extension Patient Nationality: | * code: Saudi Arabia
 |
| [Patient Gender Extension](StructureDefinition-lean-patient-gender-extension.md) | Male |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-example-001",
  "meta" : {
    "profile" : [
      "http://lean.sa/fhir/lean/core/StructureDefinition/lean-core-patient"
    ]
  },
  "extension" : [
    {
      "url" : "http://lean.sa/fhir/lean/core/StructureDefinition/lean-patient-gender-extension",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://lean.sa/fhir/lean/core/CodeSystem/lean-patient-gender-codesystem",
            "code" : "M",
            "display" : "Male"
          }
        ]
      }
    },
    {
      "extension" : [
        {
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://lean.sa/fhir/lean/core/CodeSystem/lean-patient-nationality-codesystem",
                "code" : "SAU",
                "display" : "Saudi Arabia"
              }
            ]
          }
        }
      ],
      "url" : "http://lean.sa/fhir/lean/core/StructureDefinition/lean-patient-nationality-extension"
    }
  ],
  "identifier" : [
    {
      "system" : "http://lean.sa/fhir/moi/patidentifier/nid",
      "value" : "1234567891"
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "Smith",
      "given" : ["Robert"]
    },
    {
      "extension" : [
        {
          "url" : "http://lean.sa/fhir/lean/core/StructureDefinition/lean-human-language-extension",
          "valueCode" : "en"
        }
      ],
      "use" : "official",
      "family" : "Al Saud",
      "given" : ["Abdulaziz"],
      "prefix" : ["Mr."]
    },
    {
      "extension" : [
        {
          "url" : "http://lean.sa/fhir/lean/core/StructureDefinition/lean-human-language-extension",
          "valueCode" : "ar"
        }
      ],
      "use" : "official",
      "family" : "آل سعود",
      "given" : ["عبدالعزيز"],
      "prefix" : ["السيد."]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "098 123 4567",
      "use" : "mobile"
    }
  ],
  "gender" : "male",
  "birthDate" : "1990-05-15"
}

```
