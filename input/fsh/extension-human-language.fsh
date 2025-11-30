// This is a FSH file creating Lean Core Human language extension 
// This extension can be used in Patient.name if using Arabic names
/* we can further constraint it by having just en and ar as the language codes if the business requirement states 
that Patient name in KSA can only be in English and Arabic. We can keep only relevant codes in the ValueSet 
as per the requirement. 
*/
// SUSHI will look for definitions in any file using the .fsh ending.
Extension: LeanHumanLanguageExtension
Id: lean-human-language-extension
Title: "Human Language Extension"
Description: "The Human Language of the item, for example- the human language of the patient name."
Context: HumanName
* insert CommonMedataRuleSet
* value[x] 1..1
* value[x] only code
* value[x] from CommonLanguages (required)