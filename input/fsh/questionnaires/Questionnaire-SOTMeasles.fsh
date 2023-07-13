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
* insert Question(investigationForm,Investigation Form for Measles/Rubella,group,false)
* insert Question (description, Complete this form for: Any person in whom a health care worker suspects measles or rubella infection or a patient with fever and rash. The health worker should attempt to collect epidemiological and clinical data \, as well as a blood sample \, on the first contact with the patient. This contact with the patient might be the only one., display,false)
//Reporting Source
* item[=]
* insert Question(reportingSource, Section I: Identification of the Reporting Institution, group, false)
* item[=]
  * insert Question(initialDiagnosis, Initial Diagnosis, choice,false)
  * item[=].answerValueSet = Canonical(InitDiag)
  * insert Question(caseID,Case Number, string,false)
  * insert Question(reportingInstitution, Reporting Institution, group, false)
  * item[=]
    * insert Question(reportingFacility, Health Service Name, string, false)
    * insert Question (telephone, Health Service Telephone, string, false)
    * insert Question (country, Country, string, false)
    * insert Question (municipality, Municipality, string, false)
    * insert Question(state, Province/State, string,false)
    * insert Question(locality, Locality/Neighborhood, string, false)
  * insert Question (reportedBy, Reported By, string, false)
  * insert Question (DateOfConsultation, Date Of Consultation, date, false)
  * insert Question (DateOfHomeVisit, Date Of Home Visit, date, false)
  * insert Question (dateReported, Date Reported - Local, date, false)
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
* insert Question(demographics, Section II: Patient Information, group, false)
* item[=]
  * insert Question(name, Patient’s first and last names, string, false)
  * insert Question(guardian, Name of the mother or guardian, string, false)
  * insert Question(address, Address, string, false)
  * insert Question(telephone, Telephone, ContactPoint, false)
  * insert Question(landmark, Landmarks to locate the house, string, false)
  * insert Question(occupation, Patient’s Occupation, string, false)
  * insert Question(location living in, Type of locality, choice, false)
  * item[=].answerValueSet = Canonical(LocType)
  * insert Question(workAddress, Work or school address, string, false)
  * insert Question(sex, Patient’s sex, choice, false)
  * item[=].answerValueSet = Canonical(BiologicalSex)
  * insert Question(DoB, Patient’s Date of Birth, date, false)
  * insert Question(ageOnset, If date of birth is unknown\, age, Age, false)
//Vaccination Status
* item[=]
  * insert Question(vaccinationStatus, Section III: Vaccination History, group, true)
  * insert Question(vaccineType, Type of Vaccine*, choice, false)
  * item[=].answerValueSet = Canonical(VaccineType)
  * insert Question(noOfDoses, Number of doses**, choice, false)
  * item[=].answerValueSet = Canonical(NoOfDoses)
  * insert Question(lastDoseDate, Date of last dose, date, false)
  * insert Question(sourceOfInformation, Source of vaccination Information †, choice, false)
  * item[=].answerValueSet = Canonical(SourceOfInformation)
//Clinical
* item[=]
  * insert Question(clinical, Section IV: Clinical Data; Follow-up & Treatment, group, false)
  * insert Question(fever, Fever?, choice, false)
  * item[=].answerValueSet = Canonical(YesNoUnknown)
  * insert Question(temperature, If Yes\, temperature (°\), Quantity, false)
  * item[=]
    * enableWhen
      * question = "fever"
      * operator = #=
      * answerCoding 
        * system = Canonical(YesNoUnknown)
        * code =  #Yes
  * insert Question(dateOfFeverOnset, Date of fever onset, date, false)
  * item[=]
    * enableWhen
      * question = "fever"
      * operator = #=
      * answerCoding 
        * system = Canonical(YesNoUnknown)
        * code =  #Yes
  * insert Question(rash, Rash?, choice, false)
  * item[=].answerValueSet = Canonical(YesNoUnknown) 
  * insert Question(rashDuration, If Yes\, duration of the rash(in days\),Quantity,false)
  * item[=]
    * enableWhen
      * question = "rash"
      * operator = #=
      * answerCoding 
        * system = Canonical(YesNoUnknown)
        * code =  #Yes  
  * insert Question(rashOnsetDate, Date of rash onset, date, false)
  * item[=]
    * enableWhen
      * question = "rash"
      * operator = #=
      * answerCoding 
        * system = Canonical(YesNoUnknown)
        * code =  #Yes  
  * insert Question(rashType, Type of rash, choice, false)
  * item[=]
    * enableWhen
      * question = "rash"
      * operator = #=
      * answerCoding 
        * system = Canonical(YesNoUnknown)
        * code =  #Yes  
  * insert Question(cough, Cough?, choice, false)
  * item[=].answerValueSet = Canonical(YesNoUnknown)
  * insert Question(conjunctivitis, Conjunctivitis?, choice, false)
  * item[=].answerValueSet = Canonical(YesNoUnknown)   
  * insert Question(coryza, Coryza?, choice, false)
  * item[=].answerValueSet = Canonical(YesNoUnknown)  
  * insert Question(koplikSpots, Koplik Spots?, choice, false)
  * item[=].answerValueSet = Canonical(YesNoUnknown)  
  * insert Question(lymphadenopathy, Lymphadenopathy?, choice, false)
  * item[=].answerValueSet = Canonical(YesNoUnknown)
  * insert Question(jointPain, Arthralgia?, choice, false)
  * item[=].answerValueSet = Canonical(YesNoUnknown)
  * insert Question(pregnancy, Is the patient pregnant?, choice, false)
  * item[=].answerValueSet = Canonical(YesNoUnknown)
  * insert Question(monthsPregnant, Weeks of pregnancy (01-42\), Quantity, false)
  * item[=]
    * enableWhen
      * question = "pregnancy"
      * operator = #=
      * answerCoding 
        * system = Canonical(YesNoUnknown)
        * code =  #Yes  
  * insert Question(placeOfBirth, If Yes\, Place where birth will likely take place, string, false)
  * item[=]
    * enableWhen
      * question = "pregnancy"
      * operator = #=
      * answerCoding 
        * system = Canonical(YesNoUnknown)
        * code =  #Yes
  * insert Question(admitted, Hospitalized?, choice, false)
  * item[=].answerValueSet = Canonical(YesNoUnknown)
  * insert Question(admittedHCFName, Hospital name, string, false)
  * item[=]
    * enableWhen
      * question = "admitted"
      * operator = #=
      * answerCoding 
        * system = Canonical(YesNoUnknown)
        * code =  #Yes
  * insert Question(admissionDate, If Yes\, Date of admission, date, false)
  * item[=]
    * enableWhen
      * question = "admitted"
      * operator = #=
      * answerCoding 
        * system = Canonical(YesNoUnknown)
        * code =  #Yes
  * insert Question(hospitalRecordNumber, Hospital record number, string, false)
  * item[=]
    * enableWhen
      * question = "admitted"
      * operator = #=
      * answerCoding 
        * system = Canonical(YesNoUnknown)
        * code =  #Yes
  * insert Question(outcome, Death?, choice, false)
  * item[=].answerValueSet = Canonical(PatientOutcome)
  * insert Question(outcomeDate, If Yes\, Date of death, date, false)
  * item[=]
    * enableWhen
      * question = "outcome"
      * operator = #=
      * answerCoding 
        * system = Canonical(PatientOutcome)
        * code =  #Death
  * insert Question(primaryCauseOfDeath, Primary cause of death, string, false)
  * item[=]
    * enableWhen
      * question = "outcome"
      * operator = #=
      * answerCoding 
        * system = Canonical(PatientOutcome)
        * code =  #Death
  * insert Question(diseaseAdditionalInfo, Comments, string, false)
//Laboratory Results
* item[=]
  * insert Question(laboratoryResults, Section V: Specimens & Laboratory Testing, group, false)

//Contact Tracing
* item[=]
  * insert Question(contactTracing, Section VI: Investigation, group, false)
//Epidemiological Data
* item[=]
  * insert Question(epiData, Section VII: Response Measures, group, false)
//Classification
* item[=]
  * insert Question(classification, Section VIII: Classification, group, false)