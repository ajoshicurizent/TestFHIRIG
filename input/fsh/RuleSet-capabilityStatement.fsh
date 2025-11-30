// This is a FSH file creating some rules for the CapabilityStatement
Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension.valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
* rest.resource.profile = "{profile}"
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension.valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
* rest.resource.interaction.code = {interaction}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension.valueCode = {expectation}

RuleSet: SupportSearchParameter (name, cannonical, type, expectation )
* rest.resource.searchParam.name = "{name}"
* rest.resource.searchParam.definition = "{cannonical}"
* rest.resource.searchParam.type = {type}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension.valueCode = {expectation}

