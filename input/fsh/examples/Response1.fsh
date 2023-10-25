
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender


Instance: Response1
InstanceOf: QuestionnaireResponse
Usage: #example
* meta
  * profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse|2.7"
  * tag.code = #"lformsVersion: 33.3.6"
* questionnaire = "http://worldhealthorganization.github.io/smart-ot/Questionnaire/Questionnaire-SOTMeasles"
* status = #completed
* authored = "2023-10-15T11:56:12.556Z"
* item
  * linkId = "investigationForm"
  * text = "Investigation Form for Measles/Rubella"
  * item[0]
    * linkId = "reportingSource"
    * text = "Section I: Identification of the Reporting Institution"
    * item[0]
      * linkId = "initialDiagnosis"
      * text = "Initial Diagnosis"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/InitDiag#1 "Measles"
    * item[+]
      * linkId = "caseID"
      * text = "Case Number"
      * answer.valueString = "123"
    * item[+]
      * linkId = "reportingInstitution"
      * text = "Reporting Institution"
      * item[0]
        * linkId = "reportingFacility"
        * text = "Health Service Name"
        * answer.valueString = "hservicename"
      * item[+]
        * linkId = "telephone"
        * text = "Health Service Telephone"
        * answer.valueString = "12345678"
      * item[+]
        * linkId = "country"
        * text = "Country"
        * answer.valueString = "Utopia"
      * item[+]
        * linkId = "municipality"
        * text = "Municipality"
        * answer.valueString = "Middle"
      * item[+]
        * linkId = "state"
        * text = "Province/State"
        * answer.valueString = "Nowhere"
      * item[+]
        * linkId = "locality"
        * text = "Locality/Neighborhood"
        * answer.valueString = "Right"
    * item[+]
      * linkId = "reportedBy"
      * text = "Reported By"
      * answer.valueString = "Dr. WHO"
    * item[+]
      * linkId = "DateOfConsultation"
      * text = "Date Of Consultation"
      * answer.valueDate = "2023-10-10"
    * item[+]
      * linkId = "DateOfHomeVisit"
      * text = "Date Of Home Visit"
      * answer.valueDate = "2023-10-02"
    * item[+]
      * linkId = "dateReported"
      * text = "Date Reported - Local"
      * answer.valueDate = "2023-10-02"
    * item[+]
      * linkId = "DateReportedNational"
      * text = "Date Reported - National"
      * answer.valueDate = "2023-10-03"
    * item[+]
      * linkId = "DetectedBy"
      * text = "Detected By"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/DetectedBy#88 "Other"
    * item[+]
      * linkId = "TypeOfProviderReporting"
      * text = "Type Of Provider Reporting"
      * answer.valueCoding =  http://worldhealthorganization.github.io/smart-ot/ProvType#1 "Public"
  * item[+]
    * linkId = "demographics"
    * text = "Section II: Patient Information"
    * item[0]
      * linkId = "name"
      * text = "Patient’s first and last names"
      * answer.valueString = "John Doe"
    * item[+]
      * linkId = "guardian"
      * text = "Name of the mother or guardian"
      * answer.valueString = "Jane Doe"
    * item[+]
      * linkId = "address"
      * text = "Address"
      * answer.valueString = "Coast street"
    * item[+]
      * linkId = "telephone"
      * text = "Telephone"
      * answer.valueString = "0987654321"
    * item[+]
      * linkId = "landmark"
      * text = "Landmarks to locate the house"
      * answer.valueString = "Fountain"
    * item[+]
      * linkId = "occupation"
      * text = "Patient’s Occupation"
      * answer.valueString = "Busy"
    * item[+]
      * linkId = "localityType"
      * text = "Type of locality"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/LocType#1 "Urban"
    * item[+]
      * linkId = "workAddress"
      * text = "Work or school address"
      * answer.valueString = "HomeStreet"
    * item[+]
      * linkId = "sex"
      * text = "Patient’s sex"
      * answer.valueCoding = http://hl7.org/fhir/administrative-gender#male "Male"
    * item[+]
      * linkId = "DoB"
      * text = "Patient’s Date of Birth"
      * answer.valueDate = "2010-10-16"
  * item[+]
    * linkId = "vaccinationStatus"
    * text = "Section III: Vaccination History"
    * item[0]
      * linkId = "vaccineType"
      * text = "Type of Vaccine*"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/VaccineType#1 "Measles"
    * item[+]
      * linkId = "noOfDoses"
      * text = "Number of doses**"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/NoOfDoses#0 "Zero dose"
    * item[+]
      * linkId = "sourceOfInformation"
      * text = "Source of vaccination Information †"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/VaccineInfoSource#HealthServices "Health Services"
  * item[+]
    * linkId = "clinical"
    * text = "Section IV: Clinical Data; Follow-up & Treatment"
    * item[0]
      * linkId = "fever"
      * text = "Fever?"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/YesNoUnknown#No "No"
    * item[+]
      * linkId = "rash"
      * text = "Rash?"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/YesNoUnknown#Yes "Yes"
    * item[+]
      * linkId = "rashDuration"
      * text = "If Yes, duration of the rash(in days)"
      * answer.valueInteger = 3
    * item[+]
      * linkId = "cough"
      * text = "Cough?"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/YesNoUnknown#Yes "Yes"
    * item[+]
      * linkId = "conjunctivitis"
      * text = "Conjunctivitis?"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/YesNoUnknown#Yes "Yes"
    * item[+]
      * linkId = "coryza"
      * text = "Coryza?"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/YesNoUnknown#No "No"
    * item[+]
      * linkId = "koplikSpots"
      * text = "Koplik Spots?"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/YesNoUnknown#No "No"
    * item[+]
      * linkId = "lymphadenopathy"
      * text = "Lymphadenopathy?"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/YesNoUnknown#No "No"
    * item[+]
      * linkId = "jointPain"
      * text = "Arthralgia?"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/YesNoUnknown#No "No"
    * item[+]
      * linkId = "pregnancy"
      * text = "Is the patient pregnant?"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/YesNoUnknown#No "No"
    * item[+]
      * linkId = "admitted"
      * text = "Hospitalized?"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/YesNoUnknown#No "No"
    * item[+]
      * linkId = "outcome"
      * text = "Death?"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/PatientOutcome#Sick "Still sick"
  * item[+]
    * linkId = "laboratoryResults"
    * text = "Section V: Specimens & Laboratory Testing"
    * item[0]
      * linkId = "specimenNumber"
      * text = "Specimen number*"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/SpecimenNumber#1 "First Sample"
    * item[+]
      * linkId = "sampleType"
      * text = "Type of specimen**"
      * answer.valueCoding = http://worldhealthorganization.github.io/smart-ot/SampleType#1 "Serum"