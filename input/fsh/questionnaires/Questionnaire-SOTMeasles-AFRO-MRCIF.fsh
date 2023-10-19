/*
RuleSet: Question(linkId, text, type, repeats)
* item[+].linkId = "{linkId}"
* item[=].text = "{text}"
* item[=].type = #{type}
* item[=].repeats = {repeats}


Instance: SOTMeasles-AFRO-MRCIF
InstanceOf: sdc-questionnaire-extr-smap
Description: "Measles Case Investigation Questionnaire"
Title: "Measles Case Investigation Questionnaire"
Usage: #definition
* title = "AFRO Measles Case Investigation Questionnaire"
* description = "AFRO Measles Case Investigation Questionnaire"
* name = "SOTMeasles-AFRO-MRCIF"
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft
* contained[+] = InitDiag
* contained[+] = YesNoUnknown
* contained[+] = RashType
* contained[+] = Antigen
* contained[+] = Result
//Header
* insert Question(investigationForm,Measles/ rubella suspected case investigation form for immediate reporting,group,false)
* item[=]
  * insert Question (description, Complete this form for: health facility / district to the national level, display,false)
//Reporting Source
  * insert Question(reportingSource, For Official Use Only \(to be completed by the district / national team), group, false)
  * item[=]
    * insert Question(caseID,EPID Number:  Country-Province-District-year-onset-case #, string,false)
    * insert Question(reportingInstitution, Reporting Institution, group, false)
    * item[=]
      * insert Question(reportingFacility, Reporting Health Facility, string, false)
      * insert Question(locality, Reporting District, string, false)
    * insert Question (DateReportedNational, Date the form was received at national level, date, false)
//Demographics
  * insert Question(demographics, IDENTIFICATION:, group, false)
  * item[=]
    * insert Question(name, Patient’s first and last names, string, false)
    * insert Question(address, Address, string, false)
    * insert Question(occupation, Patient’s Occupation, string, false)
    * insert Question(localityType, Type of locality, choice, false)
    * item[=].answerValueSet = Canonical(LocType)
    * insert Question(sex, Patient’s sex, choice, false)
    * item[=].answerValueSet = Canonical(BiologicalSex)
    * insert Question(DoB, Patient’s Date of Birth, date, false)
    * insert Question(ageOnset, If date of birth is unknown\, age, integer, false)
//Vaccination Status
  * insert Question(vaccinationStatus, VACCINATION STATUS:, group, true)
  * item[=]
    * insert Question(vaccineType, Type of Vaccine received, choice, false)
    * item[=].answerValueSet = Canonical(VaccineType)
    * insert Question(noOfDoses, Number of measles containing vaccine doses received in routine EPI and/or SIAs \(valid values: 1 – 4 doses), choice, false)
    * item[=].answerValueSet = Canonical(NoOfDoses)
    * insert Question(lastDoseDate, Date of last dose, date, false)
//Case Investigation
  * insert Question(caseInvestigation, CASE INVESTIGATION:, group, true)
  * item[=]
    * insert Question (DateOfConsultation, Date Of case investigation, date, false)
    * insert Question (dateReported, Date case was notified to the district, date, false)
    * insert Question(rashOnsetDate, Date of rash onset, date, false)
//Clinical
  * insert Question(clinical, Clinical HISTORY:, group, false)
  * item[=]
    * insert Question(fever, Fever, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Question(rash, Generalized Rash, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown) 
    * insert Question(cough, Cough, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Question(conjunctivitis, Red Eyes, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)   
    * insert Question(coryza, Running nose, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)   
    * insert Question(lymphadenopathy, Sowllen lymph nodes behind ears, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Question(jointPain, joint pain/swelling, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Question(admitted, Hospitalized, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Question(outcome, Outcome, choice, false)
    * item[=].answerValueSet = Canonical(PatientOutcome)
    * insert Question(travelledOutside, History of travel outside the village/ town/ district in last 7 – 21 days before onset of rash, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)  
    * insert Question(infectionSetting, Most probable place of exposure to measles/ rubella: district, string, false)
//Classification
  * insert Question(classification, FINAL CLASSIFICATION:, group, false)
  * item[=]
    * insert Question(finalClassification, Final Classification, choice, false)
    * item[=].answerValueSet = Canonical(FinalClassification)
    * insert Question (reportedBy, Person Completing the form: Name, string, false)
//Laboratory Results
  * insert Question(laboratoryResults, FOR SUSPECTED MEASLES/ RUBELLA CASES WITH LAB SPECIMENS, group, false)
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

*/