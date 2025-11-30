// This is a FSH file creating Lean Core Gender CodeSystem to manage the codes defined by SHDD
// SUSHI will look for definitions in any file using the .fsh ending.
CodeSystem: LeanPatientGenderCodeSystem
Id: lean-patient-gender-codesystem
Title: "Gender codes (Saudi-Health-Data-Dictionary-v2 sex codes)"
Description: "Saudi-Health-Data-Dictionary-v2.pdf defined gender codes. Use these along with Patient.gender element."
* insert CommonMedataRuleSet
* ^caseSensitive = true
* #A "Sex changed to Male"
* #B "Sex changed to female"
* #C "Not Completed"
* #F "Female"
* #M "Male"
* #K "Unknown"
* #U "Undetermined"