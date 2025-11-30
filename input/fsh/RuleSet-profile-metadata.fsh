// This is a FSH file creating some rules and trying out FSH insert rules functionality
// This is profile common elements
RuleSet: CommonMedataRuleSet
* ^status = #draft
* ^version = #0.0.1
* ^copyright = "Used by permission of Lean Business Services. "
* ^experimental = false
* ^contact.telecom.system = #email
* ^contact.telecom.value = "https://lean.sa/"

RuleSet: Name(first, last)
* name[+].given = "{first}"
* name[=].family = "{last}"