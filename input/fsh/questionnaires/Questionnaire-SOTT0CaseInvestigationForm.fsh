/*RuleSet: Question(linkId, text, type, repeats)
* item[+].linkId = "{linkId}"
* item[=].text = "{text}"
* item[=].type = #{type}
* item[=].repeats = {repeats}*/


Instance: Questionnaire-SOTT0CaseInvestigationForm
InstanceOf: sdc-questionnaire-extr-smap
Description: "T0 Case Investigation Questionnaire"
Title: "T0 Case Investigation Questionnaire"
Usage: #definition
* title = "T0 Case Investigation Questionnaire"
* description = "T0 Case Investigation Questionnaire"
* name = "Questionnaire-SOTT0CaseInvestigationForm"
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft

//Header
* insert Question(investigationForm,T0 Initial Case Investigation Form,display,false)
  //Demographics
  * item[=]
  * insert Question(Demographics, Section 1: Patient Information, display, false)
  * item[=]
    * insert Question(Name, Name, string, false)
    * insert Question(identification,Identification, string,false)
    * insert Question (telephone, Telephone, string, false)
    * insert Question(BirthDate, Birth Date, date, false)
    * insert Question(Sex, Sex at birth,choice,false)
    * item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
    * insert Question(estimatedAge, Estimated Age in years/months/days, string, false)
    * insert Question(Occupation,Occupation,string,false)
    * insert Question(healthServiceName, If working in a health facility\, specify name and locality, string, false)
    * insert Question(address, Residential street address, string, false)
    * insert Question(province, Admin Level 1 - province, string, false)
    * insert Question(district, Admin Level 2 - district, string, false)
    * insert Question(commune, Admin Level 3 - commune, string, false)
    * insert Question(ward, Admin Level 4 - ward \, parish, string, false)
  //Clinical Information
  * item[=]
  * insert Question(Clinical, Section 2: Clinical Information, display, false)
    * item [=]
    * insert Question(clinicalCourse, Patient clinical course, group, false)
    * insert Question(symptoms, Patient symptoms at presentation - check all reported symptoms, group, false)
    * insert Question(signs, Patient signs at presention - check all observed signs, group, false)
    * insert Question(conditions, Underlying conditions and comorbidity - check all that apply, group, false)
  //Exposure
  * item[=]
  * insert Question(Exposure, Section 3: Exposure and travel Information 3 WEEKS PRIOR TO FIRST SYMPTOM ONSET, display, false)
  //Laboratory Information
  * item[=]
  * insert Question(Laboratory, Section 4: Laboratory Information, display, false)