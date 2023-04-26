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

//Header
* insert Question(investigationForm,Investigation Form for Measles/Rubella,display,false)
* insert Question (description, "Complete this form for: Any person in whom a health care worker suspects measles or rubella infection or a patient with fever and rash. The health worker should attempt to collect epidemiological and clinical data, as well as a blood sample, on the first contact with the patient. This contact with the patient might be the only one.", display,false)
//Demographics
* item[=]
  * insert Question(Demographics, Section I: Patient Demographics, display, false)
  * item[=]
    * insert Question(Name, Name -if confidentiality is a concern the name can be omitted so long as a unique identifier exists, display, false)
    * item[=]
      * insert Question(FamilyName, Family Name /Last Name, string, false)
      * insert Question(GivenName, Given Name /First Name, string, false)
  * insert Question(Address, Address, Address,false)
//Reporting Source
* item[=]
  * insert Question(Demographics, Section I: Patient Demographics, display, false)
//Clinical
* item[=]
  * insert Question(Demographics, Section I: Patient Demographics, display, false)
//Laboratory Results
* item[=]
  * insert Question(Demographics, Section I: Patient Demographics, display, false)
//Vaccination Status
* item[=]
  * insert Question(Demographics, Section I: Patient Demographics, display, false)
//Contact Tracing
* item[=]
  * insert Question(Demographics, Section I: Patient Demographics, display, false)
//Epidemiological Data
* item[=]
  * insert Question(Demographics, Section I: Patient Demographics, display, false)
//Classification
* item[=]
  * insert Question(Demographics, Section I: Patient Demographics, display, false)