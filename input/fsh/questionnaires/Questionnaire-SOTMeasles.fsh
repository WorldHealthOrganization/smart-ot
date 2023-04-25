RuleSet: Question(linkId, text, type, repeats)
* item[+].linkId = "{linkId}"
* item[=].text = "{text}"
* item[=].type = #{type}
* item[=].repeats = {repeats}


Instance: Questionnaire-SOTMeasles
InstanceOf: sdc-questionnaire-extr-smap
Description: "Measles Case Investigation Questionnaire"
Title: "Measles Case Investigation Questionnaire"
Usage: #definition
* title = "Measles Case Investigation Questionnaire"
* description = "Measles Case Investigation Questionnaire"
* name = "Questionnaire-SOTMeasles"
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft

* insert Question(investigationForm,Investigation Form for Measles/Rubella,display,false)
* item[=]
  * insert Question(Demographics, Section I: Patient Demographics, display, false)
  * item[=]
   * insert Question(Name, Name (if confidentiality is a concern the name can be omitted so long as a unique identifier
exists), display, false)
   * item[=]
    * insert Question(FamilyName, Family Name (Last Name), string, false)
    * insert Question(GivenName, Given Name (First Name), string, false)
