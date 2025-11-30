// CapabilityStatement instance in FSH
Instance: LeanCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Lean Core CapabilityStatement"
Description: "FHIR server shall behave in accordance of this capability statement."
* name = "LeanCoreCapabilityStatement"
* title = "Lean Core Capability Statement"
* status = #draft
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* date = "2025-11-23T12:34:56Z"
* rest.mode = #server
* insert SupportResource(Patient, #SHALL)
* insert SupportProfile(http://lean.sa/fhir/lean/core/StructureDefinition/lean-core-patient, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportSearchParameter(identifier, http://hl7.org/fhir/SearchParameter/Patient-identifier , #token, #SHALL)