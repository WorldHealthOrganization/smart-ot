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
* contained[+] = InitDiag

//Header
* insert Question(investigationForm,Investigation Form for Measles/Rubella,display,false)
//* insert Question (description, "Complete this form for: Any person in whom a health care worker suspects measles or rubella infection or a patient with fever and rash. The health worker should attempt to collect epidemiological and clinical data, as well as a blood sample, on the first contact with the patient. This contact with the patient might be the only one.", display,false)
//Reporting Source
* item[=]
  * insert Question(ReportingSource, Section I: Identification of the Reporting Institution, display, false)
  * item[=]
    * insert Question(initialDiagnosis, Initial Diagnosis, choice,false)
    * item[=].answerValueSet = Canonical(InitDiag)
  * insert Question(caseNumber,Case Number, string,false)
  * insert Question(reportingInstitution, Reporting Institution, group, false)
    * item[=]
      * insert Question(name, Health Service Name, string, false)
      * insert Question (telephone, Health Service Telephone, string, false)
      * insert Question(state, Province/State, string,false)
      * insert Question(locality, Locality/Neighborhood, string, false)
      * insert Question (ReportedBy, Reported By, string, false)
  * insert Question (DateOfConsultation, Date Of Consultation, date, false)
  * insert Question (DateOfHomeVisit, Date Of Home Visit, date, false)
  * insert Question (DateReportedLocal, Date Reported - Local, date, false)
  * insert Question (DateReportedNational, Date Reported - National, date, false)
  * insert Question (DetectedBy, Detected By, choice, false)
  * item[=].answerValueSet = Canonical(DetectedBy)
  * insert Question (TypeOfProviderReporting, Type Of Provider Reporting,choice, false)
  * item[=].answerValueSet = Canonical(ProvType)
  * insert Question(specifyother, Specify, string, false)
  * item[=]
    * enableWhen
      * question = "TypeOfProviderReporting"
      * operator = #=
      * answerCoding 
        * system = "http://ritikarawlani.github.io/smart-outbreak-measles/ProvType"
        * code =  #88
//Demographics
* item[=]
* insert Question(Demographics, Section II: Patient Demographics, display, false)
* item[=]
  * insert Question(Name, Name -if confidentiality is a concern the name can be omitted so long as a unique identifier exists, display, false)
  * item[=]
    * insert Question(FamilyName, Family Name /Last Name, string, false)
    * insert Question(GivenName, Given Name /First Name, string, false)
* insert Question(Address, Address, string,false)
* insert Question (LocalityType, Type of Locality, choice, false)
// * item[=].answerValueSet = Canonical(sot-measles-locality-type)
//Vaccination Status
* item[=]
  * insert Question(VaccinationStatus, Section III: Vaccination History, display, false)
//Clinical
* item[=]
  * insert Question(Clinical, Section IV: Clinical Data; Follow-up & Treatment, display, false)
//Laboratory Results
* item[=]
  * insert Question(LaboratoryResults, Section V: Specimens & Laboratory Testing, display, false)

//Contact Tracing
* item[=]
  * insert Question(ContactTracing, Section VI: Investigation, display, false)
//Epidemiological Data
* item[=]
  * insert Question(EpiData, Section VII: Response Measures, display, false)
//Classification
* item[=]
  * insert Question(Classification, Section VIII: Classification, display, false)