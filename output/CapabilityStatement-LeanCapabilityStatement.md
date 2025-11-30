# Lean Core CapabilityStatement - v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lean Core CapabilityStatement**

## CapabilityStatement: Lean Core CapabilityStatement 

| | |
| :--- | :--- |
| *Official URL*:http://lean.sa/fhir/lean/core/CapabilityStatement/LeanCapabilityStatement | *Version*:0.0.1 |
| Draft as of 2025-11-23 | *Computable Name*:LeanCoreCapabilityStatement |

 
FHIR server shall behave in accordance of this capability statement. 

 [Raw OpenAPI-Swagger Definition file](LeanCapabilityStatement.openapi.json) | [Download](LeanCapabilityStatement.openapi.json) 

## Lean Core Capability Statement

* Implementation Guide Version: 0.0.1 
* FHIR Version: 4.0.1 
* Supported Formats: `json`
* Published on: 2025-11-23 12:34:56+0000 
* Published by: Lean Business Service, KSA 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: server

### Capabilities by Resource/Profile

#### Summary

The summary table lists the resources that are part of this configuration, and for each resource it lists:

* The relevant profiles (if any)
* The interactions supported by each resource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**ype are only present if at least one of the resources has support for them.
* The required, recommended, and some optional search parameters (if any).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Patient](#Patient1-1) | [http://lean.sa/fhir/lean/core/StructureDefinition/lean-core-patient](StructureDefinition-lean-core-patient.md) | y |  |  |  | identifier |  |  |  |

-------

#### Resource Conformance: SHALL Patient

Base System Profile

[Lean Core Patient Profile](StructureDefinition-lean-core-patient.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `read`.

Search Parameters


 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "LeanCapabilityStatement",
  "url" : "http://lean.sa/fhir/lean/core/CapabilityStatement/LeanCapabilityStatement",
  "version" : "0.0.1",
  "name" : "LeanCoreCapabilityStatement",
  "title" : "Lean Core Capability Statement",
  "status" : "draft",
  "date" : "2025-11-23T12:34:56Z",
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
  "description" : "FHIR server shall behave in accordance of this capability statement.",
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json"],
  "rest" : [
    {
      "mode" : "server",
      "resource" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "Patient",
          "profile" : "http://lean.sa/fhir/lean/core/StructureDefinition/lean-core-patient",
          "interaction" : [
            {
              "code" : "read"
            }
          ],
          "searchParam" : [
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier",
              "type" : "token"
            }
          ]
        }
      ]
    }
  ]
}

```
