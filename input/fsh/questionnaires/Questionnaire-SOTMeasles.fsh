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
* contained[+] = YesNoUnknown
* contained[+] = RashType
//Header
* insert Question(investigationForm,Investigation Form for Measles/Rubella,group,false)
* item[=]
  * insert Question (description, Complete this form for: Any person in whom a health care worker suspects measles or rubella infection or a patient with fever and rash. The health worker should attempt to collect epidemiological and clinical data \, as well as a blood sample \, on the first contact with the patient. This contact with the patient might be the only one., display,false)
//Reporting Source
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
          * system = Canonical(ProvTypeCs)
          * code =  #88
//Demographics
  * insert Question(demographics, Section II: Patient Information, group, false)
  * item[=]
    * insert Question(name, Patient’s first and last names, string, false)
    * insert Question(guardian, Name of the mother or guardian, string, false)
    * insert Question(address, Address, string, false)
    * insert Question(telephone, Telephone, string, false)
    * insert Question(landmark, Landmarks to locate the house, string, false)
    * insert Question(occupation, Patient’s Occupation, string, false)
    * insert Question(localityType, Type of locality, choice, false)
    * item[=].answerValueSet = Canonical(LocType)
    * insert Question(workAddress, Work or school address, string, false)
    * insert Question(sex, Patient’s sex, choice, false)
    * item[=].answerValueSet = Canonical(BiologicalSex)
    * insert Question(DoB, Patient’s Date of Birth, date, false)
    * insert Question(ageOnset, If date of birth is unknown\, age, integer, false)
//Vaccination Status
  * insert Question(vaccinationStatus, Section III: Vaccination History, group, true)
  * item[=]
    * insert Question(vaccineType, Type of Vaccine*, choice, false)
    * item[=].answerValueSet = Canonical(VaccineType)
    * insert Question(noOfDoses, Number of doses**, choice, false)
    * item[=].answerValueSet = Canonical(NoOfDoses)
    * insert Question(lastDoseDate, Date of last dose, date, false)
    * insert Question(sourceOfInformation, Source of vaccination Information †, choice, false)
    * item[=].answerValueSet = Canonical(VaccineInfoSource)
//Clinical
  * insert Question(clinical, Section IV: Clinical Data; Follow-up & Treatment, group, false)
  * item[=]
    * insert Question(fever, Fever?, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Question(temperature, If Yes\, temperature (°\), decimal, false)
    * item[=]
      * enableWhen
        * question = "fever"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes
/*  * item[=]
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
    * extension[=].valueCoding = http://unitsofmeasure.org#Cel
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
    * extension[=].valueCoding = http://unitsofmeasure.org#[degF]
*/
    * insert Question(dateOfFeverOnset, Date of fever onset, date, false)
    * item[=]
      * enableWhen
        * question = "fever"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes
    * insert Question(rash, Rash?, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown) 
    * insert Question(rashDuration, If Yes\, duration of the rash(in days\),integer,false)
    * item[=]
      * enableWhen
        * question = "rash"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes  
    * insert Question(rashOnsetDate, Date of rash onset, date, false)
    * item[=]
      * enableWhen
        * question = "rash"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes  
    * insert Question(rashType, Type of rash, choice, false)
    * item[=].answerValueSet = Canonical(RashType)
    * item[=]
      * enableWhen
        * question = "rash"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
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
    * insert Question(monthsPregnant, Weeks of pregnancy (01-42\), integer, false)
    * item[=]
      * enableWhen
        * question = "pregnancy"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes  
    * insert Question(placeOfBirth, If Yes\, Place where birth will likely take place, string, false)
    * item[=]
      * enableWhen
        * question = "pregnancy"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes
    * insert Question(admitted, Hospitalized?, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Question(admittedHCFName, Hospital name, string, false)
    * item[=]
      * enableWhen
        * question = "admitted"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes
    * insert Question(admissionDate, If Yes\, Date of admission, date, false)
    * item[=]
      * enableWhen
        * question = "admitted"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes
    * insert Question(hospitalRecordNumber, Hospital record number, string, false)
    * item[=]
      * enableWhen
        * question = "admitted"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
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
  * insert Question(laboratoryResults, Section V: Specimens & Laboratory Testing, group, false)
  * item[=]
    * insert Question(specimenNumber, Specimen number*, choice, false)
    * item[=].answerValueSet = Canonical(SpecimenNumber)
    * insert Question(sampleType, Type of specimen**, choice, false)
    * item[=].answerValueSet = Canonical(SampleType)
    * insert Question(collectionDate, Date specimen obtained, date, false)
    * insert Question(labName, Laboratory Name, string, false)
    * insert Question(specimenSentDate, Date specimen was sent to lab, date, false)
    * insert Question(specimenReceivedDate, Date Received, date, false)
    * insert Question(sampleId, # specimen ID in lab., string, false)
    * insert Question(testPerformed, Type of test, choice, false)
    * item[=].answerValueSet = Canonical(TestPerformed)
    * insert Question(antigen, Antigen, choice, false)
    * item[=].answerValueSet = Canonical(Antigen)
    * insert Question(result, Result, choice, false)
    * item[=].answerValueSet = Canonical(Result)
    * insert Question(resultDate, Date of Results, date, false)
    * insert Question(specifyVirus,If virus was detected\, specify viral genotype: (Measles: A\, B1\, B2\, B3\, C1\, C2\, D1\, D2\, D3\, D4\, D5\, D6\, D7\, D8\, D9\, D10\, E\, F\, G1\, G2\, G3\, H1\, H2. Rubella: 1a\, 1B\, 1C\,
1D\, 1E\, 1F\, 1g\, 2A\, 2B\, 2c\), string, false )
//Contact Tracing
  * insert Question(contactTracing, Section VI: Investigation, group, false)
  * item[=]
    * insert Question(caseSearchConducted, Were active case-searches conducted?, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Question(noOfsuspectCases, If Yes\, Number of suspect cases detected during active case-search, integer, false)
    * item[=]
      * enableWhen
        * question = "caseSearchConducted"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes  
    * insert Question(pregnantContact, Was the patient in contact with any pregnant woman?, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)  
    * insert Question(pregnantContactNames, If Yes\, Name(s\), string, false)
    * item[=]
      * enableWhen
        * question = "pregnantContact"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes   
    * insert Question(localCasesPresent, Are there other cases present in the case’s municipality of residence?, choice, false)
    * item[=].answerValueSet = Canonical(LocalCasesPresent)  
    * insert Question(travelledOutside, Did the patient travel outside his/her province/state of residence 7-23 days before rash onset?, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)  
    * insert Question(travelDetails, If Yes\,:, group, true)
    * item[=]  
      * insert Question(placeOfTravel, Cities/Countries, string, false)
      * insert Question(arrivalDate, Date of arrival, date, false)
      * insert Question(departureDate, Date of departure, date, false)
    * item[=]    
      * enableWhen
        * question = "travelledOutside"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes  
    * insert Question(infectionSetting, Setting where infected?, choice, false)
    * item[=].answerValueSet = Canonical(InfectionSetting)
    * insert Question(specifyInfectionSetting, Specify, string, false)
    * item[=]
      * enableWhen
        * question = "infectionSetting"
        * operator = #=
        * answerCoding
          * system = Canonical(InfectionSettingCs)
          * code = #88
//Epidemiological Data
  * insert Question(epiData, Section VII: Response Measures, group, false)
  * item[=]
    * insert Question(ringVaccination, Ring vaccination?, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Question(dateStarted, Date started, date, false)
    * item[=]
      * enableWhen
        * question = "ringVaccination"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes  
    * insert Question(dateEnded, Date Ended, date, false)
    * item[=]
      * enableWhen
        * question = "ringVaccination"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes  
    * insert Question(noOfDosesRingVaccination, Number of doses given during ring vaccination, integer, false)
    * item[=]
      * enableWhen
        * question = "ringVaccination"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes  
    * insert Question(rapidCoverageMonitioring, Was rapid coverage monitoring done, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)  
    * insert Question(percentVaccinated, If yes\, what % of vaccinated persons was found?, integer, false)
    * item[=]
      * enableWhen
        * question = "rapidCoverageMonitioring"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes 
    * insert Question(contactTracingDone,Were the contacts followed for up to 30 days after the date of the rash onset of the case?, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)  
    * insert Question(lastFollowUp, If yes\, date of the last day of contact follow-up, date, false)
    * item[=]
      * enableWhen
        * question = "contactTracingDone"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes 
//Classification
  * insert Question(classification, Section VIII: Classification, group, false)
  * item[=]
    * insert Question(finalClassification, Final Classification, choice, false)
    * item[=].answerValueSet = Canonical(FinalClassification)
    * insert Question(confirmationBasis, Basis for confirmation, choice, false)
    * item[=].answerValueSet = Canonical(ConfirmationBasis)
    * insert Question(countryImportation, If Imported or Import-related\, Country of importation, string, false)
    * item[=]
      * enableWhen
        * question = "confirmationBasis"
        * operator = #=
        * answerCoding 
          * system = Canonical(ConfirmationBasisCs)
          * code =  #1
    * insert Question(discardingBasis, Basis for discarding, choice, false)
    * item[=].answerValueSet = Canonical(DiscardingBasis)
    * insert Question(sourceOfInfection, For confirmed cases\, Source of infection, choice, false)
    * item[=].answerValueSet = Canonical(SourceOfInfection)
    * insert Question(contact, Contact of another case?, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown) 
    * insert Question(contactCaseNo, Contact of (or epidemiologically-linked to\) case number, string, false)
    * item[=]
      * enableWhen
        * question = "contact"
        * operator = #=
        * answerCoding 
          * system = Canonical(YesNoUnknownCs)
          * code =  #Yes
    * insert Question(classifiedBy, Classified by, string, false)
    * insert Question(classificationDate, Date of final classification, date, false)