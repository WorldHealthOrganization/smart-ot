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
* insert Question(Demographics, Section I: Patient Information, display, false)
* item[=]
  * insert Question(Name, Name, string, false)
  * insert Question(identification,Identification, string,false)
  * insert Question (telephone, Telephone, string, false)
  * insert Question(BirthDate, Birth Date, date, false)
  * insert Question(Sex, Sex at birth,date,false)
  * item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
  * insert Question(estimatedAge, Estimated Age in years/months/days, string, false)
  * insert Question(Occupation,Occupation,string,false)
  * insert Question(healthServiceName, If working in a health facility\, specify name and locality, string, false)
//Reporting Source
* item[=]
  * insert Question(ReportingSource, Section I: Identification of the Reporting Institution, display, false)
  * item[=]
    * insert Question(initialDiagnosis, Initial Diagnosis, choice,false)
    * item[=].answerValueSet = Canonical(InitDiag)
 
  * insert Question(reportingInstitution, Reporting Institution, group, false)
    * item[=]
      * insert Question(name, Health Service Name, string, false)
      
      * insert Question(state, Province/State, string,false)
      * insert Question(locality, Locality/Neighborhood, string, false)
      * insert Question (ReportedBy, Reported By, string, false)
  * insert Question (DateOfConsultation, Date Of Consultation, date, false)
  * insert Question (DateOfHomeVisit, Date Of Home Visit, date, false)
  * insert Question (DateReportedLocal, Date Reported - Local, date, false)
  * insert Question (DateReportedNational, Date Reported - National, date, false)
  * insert Question (DetectedBy, Detected By, choice, false)
  * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/DetectedBy"
  * insert Question (TypeOfProvide* insert Questioneporting, Type Of Provider Reporting,choice, false)
  * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ProvType"
  * insert Question(specifyother, Specify, string, false)
  * item[=]
    * enableWhen
      * question = "TypeOfProvide* insert Questioneporting"
      * operator = #=
      * answerCoding 
        * system = "http://ritikarawlani.github.io/smart-outbreak-measles/ProvType"
        * code =  #88

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