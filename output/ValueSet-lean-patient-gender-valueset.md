# Gender (Saudi-Health-Data-Dictionary-v2 sex) - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gender (Saudi-Health-Data-Dictionary-v2 sex)**

## ValueSet: Gender (Saudi-Health-Data-Dictionary-v2 sex) 

| | |
| :--- | :--- |
| *Official URL*:http://lean.sa/fhir/lean/core/ValueSet/lean-patient-gender-valueset | *Version*:0.0.1 |
| Draft as of 2025-11-25 | *Computable Name*:LeanPatientGenderValueSet |
| **Copyright/Legal**: Used by permission of Lean Business Services. | |

 
ValueSet for the Saudi-Health-Data-Dictionary-v2 gender codes. 

 **References** 

* [Patient Gender Extension](StructureDefinition-lean-patient-gender-extension.md)

### Logical Definition (CLD)

Profile: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include all codes defined in [`http://lean.sa/fhir/lean/core/CodeSystem/lean-patient-gender-codesystem`](CodeSystem-lean-patient-gender-codesystem.md)version 📦0.0.1

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "lean-patient-gender-valueset",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "http://lean.sa/fhir/lean/core/ValueSet/lean-patient-gender-valueset",
  "version" : "0.0.1",
  "name" : "LeanPatientGenderValueSet",
  "title" : "Gender (Saudi-Health-Data-Dictionary-v2 sex)",
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
  "description" : "ValueSet for the Saudi-Health-Data-Dictionary-v2 gender codes.",
  "copyright" : "Used by permission of Lean Business Services. ",
  "compose" : {
    "include" : [
      {
        "system" : "http://lean.sa/fhir/lean/core/CodeSystem/lean-patient-gender-codesystem"
      }
    ]
  }
}

```
