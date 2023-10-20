RuleSet: Quest(linkId, text, type, repeats)
* item[+].linkId = "{linkId}"
* item[=].text = "{text}"
* item[=].type = #{type}
* item[=].repeats = {repeats}


Instance: SOTMeasles-AFRO-MRCIF
InstanceOf: sdc-questionnaire-extr-smap
Description: "AFRO MEASLES/ RUBELLA SUSPECTED CASE REPORTING FORM"
Title: "AFRO MEASLES/ RUBELLA SUSPECTED CASE REPORTING FORM"
Usage: #definition
* title = "AFRO Measles Case Investigation Questionnaire"
* description = "AFRO Measles Case Investigation Questionnaire"
* name = "SOTMeasles-AFRO-MRCIF"
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft

* contained[+] = YesNoUnknown
* contained[+] = Result
//Header
* insert Quest(investigationForm,Measles/ rubella suspected case investigation form for immediate reporting,group,false)
* item[=]
  * insert Quest(description, Complete this form for: health facility / district to the national level, display,false)
//Reporting Source
  * insert Quest(reportingSource, For Official Use Only -to be completed by the district / national team, group, false)
  * item[=]
    * insert Quest(caseID,EPID Number:  Country-Province-District-year-onset-case #, string,false)
    * insert Quest(reportingInstitution, Reporting Institution, group, false)
    * item[=]
      * insert Quest(reportingFacility, Reporting Health Facility, string, false)
      * insert Quest(locality, Reporting District, string, false)
    * insert Quest(DateReportedNational, Date the form was received at national level, date, false)
//Demographics
  * insert Quest(demographics, IDENTIFICATION:, group, false)
  * item[=]
    * insert Quest(name, Name of Patient, string, false)
    * insert Quest(DoB, Date of Birth, date, false)
    * insert Quest(ageOnset, If date of birth is unknown\, age, integer, false)
    * insert Quest(sex, Sex, choice, false)
    * item[=].answerValueSet = Canonical(BiologicalSex)
//START ADAPT HERE - Break address into separate fields, and update value set for localityType
    * insert Quest(address, Address, string, false)
    * insert Quest(localityType, Urban/Rural, choice, false)
    * item[=].answerValueSet = Canonical(LocType)
//STOP ADAPT HERE - HACKATHON 
//Vaccination Status
  * insert Quest(vaccinationStatus, VACCINATION STATUS:, group, true)
  * item[=]
    * insert Quest(vaccineType, Type of Vaccine received, choice, false)
    * item[=].answerValueSet = Canonical(VaccineType)
    * insert Quest(noOfDoses, Number of measles containing vaccine doses received in routine EPI and/or SIAs -valid values: 1 - 4 doses, choice, false)
    * item[=].answerValueSet = Canonical(NoOfDoses)
    * insert Quest(lastDoseDate, Date of last dose, date, false)
//Case Investigation
  * insert Quest(caseInvestigation, CASE INVESTIGATION:, group, true)
  * item[=]
    * insert Quest(dateReported, Date case was notified to the district, date, false)
    * insert Quest(DateOfConsultation, Date Of case investigation, date, false)
    * insert Quest(rashOnsetDate, Date of rash onset, date, false)
//Clinical
  * insert Quest(clinical, Clinical HISTORY:, group, false)
  * item[=]
    * insert Quest(fever, Fever, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Quest(rash, Generalized Rash, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown) 
    * insert Quest(cough, Cough, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Quest(conjunctivitis, Red Eyes, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)   
    * insert Quest(coryza, Running nose, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)   
    * insert Quest(lymphadenopathy, Swollen lymph nodes behind ears, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Quest(jointPain, Joint pain/swelling, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
  //START ADAPT HERE - update inpatient outpatient value set, and outcome value set
    * insert Quest(admitted, In/out-patient, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Quest(outcome, Outcome, choice, false)
    * item[=].answerValueSet = Canonical(PatientOutcome)
  //STOP ADAPT HERE - HACKATHON
    * insert Quest(travelledOutside, History of travel outside the village/ town/ district in last 7 - 21 days before onset of rash, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)  
    * insert Quest(infectionSetting, Most probable place of exposure to measles/ rubella: district, string, false)
//Classification
  * insert Quest(classification, FINAL CLASSIFICATION:, group, false)
  * item[=]
  //START ADAPT HERE - update final classification value set, add date field
    * insert Quest(finalClassification, Final Classification, choice, false)
    * item[=].answerValueSet = Canonical(FinalClassification)
    * insert Quest(reportedBy, Person Completing the form: Name, string, false)
  //STOP ADAPT HERE - HACKATHON
//Laboratory Results
  * insert Quest(laboratoryResults, FOR SUSPECTED MEASLES/ RUBELLA CASES WITH LAB SPECIMENS, group, false)
  * item[=]
    //START ADAPT HERE - update spencimen value set,add fields for other, add enableWhen behaviour
    * insert Quest(sampleType, Specimen source, choice, false)
    * item[=].answerValueSet = Canonical(SampleType)
/*  * item[=]
      * enableWhen
        * question = "specimen"
        * operator = #=
        * answerCoding 
          * system = Canonical(add code system name here)
          * code =  #Other  */
    //STOP ADAPT HERE - HACKATHON 
    * insert Quest(collectionDate, Date specimen obtained, date, false)
    * insert Quest(specimenSentDate, Date specimen was sent to lab, date, false)
    * insert Quest(specimenReceivedDate, Date Received, date, false)
    //START ADAPT HERE - ADD QUESTION for specimen condition
    //STOP ADAPT HERE 
    * insert Quest(testPerformed, Type of test, choice, false)
    * item[=].answerValueSet = Canonical(TestType)
    * insert Quest(result, Result, choice, false)
    * item[=].answerValueSet = Canonical(Result)
    * insert Quest(specifyVirus,Virus Detection -Genotype, string, false )
    //START ADAPT HERE - ADD REMARKS
    * insert Quest(labName, Laboratory Name, string, false)
    //START ADAPT HERE - ADD Dates


