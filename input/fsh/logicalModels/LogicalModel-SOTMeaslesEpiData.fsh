Logical: SOTMeaslesEpiData
Title: "Surveillance & Outbreak Toolkit Measles- Epidemiological Data"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTMeaslesEpiData"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft
/*
* TransmissionSetting 1..1 CodeableConcept "Transmission Setting" "Transmission Setting"
* SchoolEnrollment 1..1 Coding "Enrolled in school?" "Enrolled in school"
* SchoolName 0..1 string "Name of school" "Name of school"
* VisitedHealthFacility 1..1 Coding "Visited a health facility in the 7–23 days before symptom onset?" "Visited a health facility in the 7–23 days before symptom onset?"
* FacilityName 0..1 string "Name of the facility" "Name of the facility"
* TravelHistory 0..1 markdown "Travel history in the past 7-23 days?" "Travel history in the past 7-23 days?"
* OutbreakRelationship 1..1 CodeableConcept "Relationship to outbreak (Is the case part of an outbreak or is it sporadic?)" "Relationship to outbreak (Is the case part of an outbreak or is it sporadic?)"
*/
* ringVaccination 1..1 code "Ring vaccination?" "Ring vaccination?"
* dateStarted 0..1 date "Date started" "Date started"
* dateEnded 0..1 date "Date Ended" "Date Ended"
* noOfDosesRingVaccination 0..1 Quantity "Number of doses given during ring vaccination" "Number of doses given during ring vaccination" 
* rapidCoverageMonitioring 1..1 code "Was rapid coverage monitoring done" "Was rapid coverage monitoring done"
* percentVaccinated 0..1 Quantity "If yes, what % of vaccinated persons was found?" "If yes, what % of vaccinated persons was found?"
* contactTracingDone 1..1 code "Were the contacts followed for up to 30 days after the date of the rash onset of the case?" "Were the contacts followed for up to 30 days after the date of the rash onset of the case?"
* lastFollowUp 0..1 string "If yes, date of the last day of contact follow-up" "If yes, date of the last day of contact follow-up"
* ringVaccination from YesNoUnknown (required)
* rapidCoverageMonitioring from YesNoUnknown (required)
* contactTracingDone from YesNoUnknown (required)