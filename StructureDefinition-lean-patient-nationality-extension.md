# Lean Extension Patient Nationality - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lean Extension Patient Nationality**

## Extension: Lean Extension Patient Nationality 

| | |
| :--- | :--- |
| *Official URL*:http://lean.sa/fhir/lean/core/StructureDefinition/lean-patient-nationality-extension | *Version*:0.0.1 |
| Draft as of 2025-11-25 | *Computable Name*:LeanPatientNationalityExtension |
| **Copyright/Legal**: Used by permission of Lean Business Services. | |

The nationality of the patient. This element is to report patient nationality as per the ISO 3166-3 Standard , 2nd edition , 3-character alphabetic codes.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Lean Core Patient Profile](StructureDefinition-lean-core-patient.md)
* Examples for this Extension: [Patient/patient-example-001](Patient-patient-example-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/my.first.sushi.project|current/StructureDefinition/lean-patient-nationality-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lean-patient-nationality-extension.csv), [Excel](StructureDefinition-lean-patient-nationality-extension.xlsx), [Schematron](StructureDefinition-lean-patient-nationality-extension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lean-patient-nationality-extension",
  "url" : "http://lean.sa/fhir/lean/core/StructureDefinition/lean-patient-nationality-extension",
  "version" : "0.0.1",
  "name" : "LeanPatientNationalityExtension",
  "title" : "Lean Extension Patient Nationality",
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
  "description" : "The nationality of the patient. This element is to report patient nationality as per the ISO 3166-3 Standard , 2nd edition , 3-character alphabetic codes.",
  "copyright" : "Used by permission of Lean Business Services. ",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Patient"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Lean Extension Patient Nationality",
        "definition" : "The nationality of the patient. This element is to report patient nationality as per the ISO 3166-3 Standard , 2nd edition , 3-character alphabetic codes."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:code",
        "path" : "Extension.extension",
        "sliceName" : "code",
        "short" : "country code to represent the Nationality",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:code.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:code.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "code"
      },
      {
        "id" : "Extension.extension:code.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://lean.sa/fhir/lean/core/ValueSet/lean-patient-nationality-valueset"
        }
      },
      {
        "id" : "Extension.extension:period",
        "path" : "Extension.extension",
        "sliceName" : "period",
        "short" : "time period when the Nationality is active. If no valuePeriod.end then the Nationality shall be considered currently active",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:period.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:period.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "period"
      },
      {
        "id" : "Extension.extension:period.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://lean.sa/fhir/lean/core/StructureDefinition/lean-patient-nationality-extension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
