Logical: SOTMeaslesVaccinationStatus
Title: "Surveillance & Outbreak Toolkit Measles- Vaccination Statuss"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTMeaslesVaccinationStatus"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* VaccineType    1..1  CodeableConcept  "Type of Vaccine"   "Type of Vaccine"
* NumberOfDoses 1..1 CodeableConcept "Number of doses received" "Number of doses received"
* Source 1..1 CodeableConcept "Source of vaccination information" "Source of vaccination information"