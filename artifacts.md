# Artifacts Summary - v0.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [Lean Core CapabilityStatement](CapabilityStatement-LeanCapabilityStatement.md) | FHIR server shall behave in accordance of this capability statement. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Lean Core Patient Profile](StructureDefinition-lean-core-patient.md) | The Lean Core Patient Profile inherits from the FHIR Patient resource. refer to it for scope and usage definitions. This profile meets the requirements of the KSA Patient demographic data set- Need further details here. It sets minimum expectations for the Patient resource to record, search, and fetch basic demographics and other administrative information about an individual patient. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. Providing the floor for standards development for specific use cases promotes interoperability and adoption. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Human Language Extension](StructureDefinition-lean-human-language-extension.md) | The Human Language of the item, for example- the human language of the patient name. |
| [Lean Extension Patient Nationality](StructureDefinition-lean-patient-nationality-extension.md) | The nationality of the patient. This element is to report patient nationality as per the ISO 3166-3 Standard , 2nd edition , 3-character alphabetic codes. |
| [Patient Gender Extension](StructureDefinition-lean-patient-gender-extension.md) | To map and write gender codes defined by the Saudi-Health-Data-Dictionary-v2.pdf. There are additional codes than just male and female defined by this specification. Use this extension along with Patient.gender element. Saudi-Health-Data-Dictionary-v2.pdf includes a data element for Sex, intended to support the exchange of a recorded sex value. This extension aligns with this definition of Sex: This field contains a code which defines the sex of the patient. It enables systems to share the sex value as it was documented in a particular context. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Gender (Saudi-Health-Data-Dictionary-v2 sex)](ValueSet-lean-patient-gender-valueset.md) | ValueSet for the Saudi-Health-Data-Dictionary-v2 gender codes. |
| [Nationality (ISO 3166-1 Alpha-3 Subset)](ValueSet-lean-patient-nationality-valueset.md) | ValueSet for the Countries represented using ISO 3166-1 alpha-3 codes. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Gender codes (Saudi-Health-Data-Dictionary-v2 sex codes)](CodeSystem-lean-patient-gender-codesystem.md) | Saudi-Health-Data-Dictionary-v2.pdf defined gender codes. Use these along with Patient.gender element. |
| [ISO 3166-1 Alpha-3 Country Codes](CodeSystem-lean-patient-nationality-codesystem.md) | This CodeSystem resource represents the ISO 3166-1 standard, 2020 edition for country codes, specifically the three-character (alpha-3) codes. It is intended to be a complete and canonical representation of the standard as a FHIR resource. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [John Cena](Patient-patient-example-001.md) | sample Patient resource instance to test the Lean Core Patient profile |

