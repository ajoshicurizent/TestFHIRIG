# Gender codes (Saudi-Health-Data-Dictionary-v2 sex codes) - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gender codes (Saudi-Health-Data-Dictionary-v2 sex codes)**

## CodeSystem: Gender codes (Saudi-Health-Data-Dictionary-v2 sex codes) 

| | |
| :--- | :--- |
| *Official URL*:http://lean.sa/fhir/lean/core/CodeSystem/lean-patient-gender-codesystem | *Version*:0.0.1 |
| Draft as of 2025-11-25 | *Computable Name*:LeanPatientGenderCodeSystem |
| **Copyright/Legal**: Used by permission of Lean Business Services. | |

 
Saudi-Health-Data-Dictionary-v2.pdf defined gender codes. Use these along with Patient.gender element. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LeanPatientGenderValueSet](ValueSet-lean-patient-gender-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "lean-patient-gender-codesystem",
  "url" : "http://lean.sa/fhir/lean/core/CodeSystem/lean-patient-gender-codesystem",
  "version" : "0.0.1",
  "name" : "LeanPatientGenderCodeSystem",
  "title" : "Gender codes (Saudi-Health-Data-Dictionary-v2 sex codes)",
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
  "description" : "Saudi-Health-Data-Dictionary-v2.pdf defined gender codes. Use these along with Patient.gender element.",
  "copyright" : "Used by permission of Lean Business Services. ",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "A",
      "display" : "Sex changed to Male"
    },
    {
      "code" : "B",
      "display" : "Sex changed to female"
    },
    {
      "code" : "C",
      "display" : "Not Completed"
    },
    {
      "code" : "F",
      "display" : "Female"
    },
    {
      "code" : "M",
      "display" : "Male"
    },
    {
      "code" : "K",
      "display" : "Unknown"
    },
    {
      "code" : "U",
      "display" : "Undetermined"
    }
  ]
}

```
