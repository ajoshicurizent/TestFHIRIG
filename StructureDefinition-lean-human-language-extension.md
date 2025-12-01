# Human Language Extension - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Human Language Extension**

## Extension: Human Language Extension 

| | |
| :--- | :--- |
| *Official URL*:http://lean.sa/fhir/lean/core/StructureDefinition/lean-human-language-extension | *Version*:0.0.1 |
| Draft as of 2025-11-25 | *Computable Name*:LeanHumanLanguageExtension |
| **Copyright/Legal**: Used by permission of Lean Business Services. | |

The Human Language of the item, for example- the human language of the patient name.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Lean Core Patient Profile](StructureDefinition-lean-core-patient.md)
* Examples for this Extension: [Patient/patient-example-001](Patient-patient-example-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/my.first.sushi.project|current/StructureDefinition/lean-human-language-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lean-human-language-extension.csv), [Excel](StructureDefinition-lean-human-language-extension.xlsx), [Schematron](StructureDefinition-lean-human-language-extension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lean-human-language-extension",
  "url" : "http://lean.sa/fhir/lean/core/StructureDefinition/lean-human-language-extension",
  "version" : "0.0.1",
  "name" : "LeanHumanLanguageExtension",
  "title" : "Human Language Extension",
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
  "description" : "The Human Language of the item, for example- the human language of the patient name.",
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
      "expression" : "HumanName"
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
        "short" : "Human Language Extension",
        "definition" : "The Human Language of the item, for example- the human language of the patient name."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://lean.sa/fhir/lean/core/StructureDefinition/lean-human-language-extension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/languages"
        }
      }
    ]
  }
}

```
