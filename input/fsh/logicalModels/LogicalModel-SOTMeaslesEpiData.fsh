Logical: SOTMeaslesEpiData
Title: "Surveillance & Outbreak Toolkit Measles- Epidemiological Data"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTMeaslesEpiData"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* TransmissionSetting 1..1 CodeableConcept "Transmission Setting" "Transmission Setting"
* SchoolEnrollment 1..1 Coding "Enrolled in school?" "Enrolled in school"
* SchoolName 0..1 string "Name of school" "Name of school"
* VisitedHealthFacility 1..1 Coding "Visited a health facility in the 7–23 days before symptom onset?" "Visited a health facility in the 7–23 days before symptom onset?"
* FacilityName 0..1 string "Name of the facility" "Name of the facility"
* TravelHistory 0..1 markdown "Travel history in the past 7-23 days?" "Travel history in the past 7-23 days?"
* OutbreakRelationship 1..1 CodeableConcept "Relationship to outbreak (Is the case part of an outbreak or is it sporadic?)" "Relationship to outbreak (Is the case part of an outbreak or is it sporadic?)"