# Patient Gender Extension - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Gender Extension**

## Extension: Patient Gender Extension 

| | |
| :--- | :--- |
| *Official URL*:http://lean.sa/fhir/lean/core/StructureDefinition/lean-patient-gender-extension | *Version*:0.0.1 |
| Draft as of 2025-11-25 | *Computable Name*:LeanGenderExtension |
| **Copyright/Legal**: Used by permission of Lean Business Services. | |

To map and write gender codes defined by the Saudi-Health-Data-Dictionary-v2.pdf. There are additional codes than just male and female defined by this specification. Use this extension along with Patient.gender element. Saudi-Health-Data-Dictionary-v2.pdf includes a data element for Sex, intended to support the exchange of a recorded sex value. This extension aligns with this definition of Sex: This field contains a code which defines the sex of the patient. It enables systems to share the sex value as it was documented in a particular context.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Lean Core Patient Profile](StructureDefinition-lean-core-patient.md)
* Examples for this Extension: [Patient/patient-example-001](Patient-patient-example-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/my.first.sushi.project|current/StructureDefinition/lean-patient-gender-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lean-patient-gender-extension.csv), [Excel](StructureDefinition-lean-patient-gender-extension.xlsx), [Schematron](StructureDefinition-lean-patient-gender-extension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lean-patient-gender-extension",
  "url" : "http://lean.sa/fhir/lean/core/StructureDefinition/lean-patient-gender-extension",
  "version" : "0.0.1",
  "name" : "LeanGenderExtension",
  "title" : "Patient Gender Extension",
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
  "description" : "To map and write gender codes defined by the Saudi-Health-Data-Dictionary-v2.pdf. There are additional codes than just male and female defined by this specification. Use this extension along with Patient.gender element. Saudi-Health-Data-Dictionary-v2.pdf includes a data element for Sex, intended to support the exchange of a recorded sex value. This extension aligns with this definition of Sex: This field contains a code which defines the sex of the patient. It enables systems to share the sex value as it was documented in a particular context.",
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
        "short" : "Patient Gender Extension",
        "definition" : "To map and write gender codes defined by the Saudi-Health-Data-Dictionary-v2.pdf. There are additional codes than just male and female defined by this specification. Use this extension along with Patient.gender element. Saudi-Health-Data-Dictionary-v2.pdf includes a data element for Sex, intended to support the exchange of a recorded sex value. This extension aligns with this definition of Sex: This field contains a code which defines the sex of the patient. It enables systems to share the sex value as it was documented in a particular context."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://lean.sa/fhir/lean/core/StructureDefinition/lean-patient-gender-extension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://lean.sa/fhir/lean/core/ValueSet/lean-patient-gender-valueset"
        }
      }
    ]
  }
}

```
