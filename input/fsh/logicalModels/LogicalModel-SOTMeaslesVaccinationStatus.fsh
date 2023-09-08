Logical: SOTMeaslesVaccinationStatus
Title: "Surveillance & Outbreak Toolkit Measles- Vaccination Statuss"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTMeaslesVaccinationStatus"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* VaccineType    1..1  code  "Type of Vaccine"   "Type of Vaccine"
* NumberOfDoses 1..1 code "Number of doses received" "Number of doses received"
* Source 1..1 code "Source of vaccination information" "Source of vaccination information"
* LastDoseDate 1..1 date "Date of last dose" "Date of last dose"
* VaccineType from VaccineType (required)
* NumberOfDoses from NoOfDoses (required)
* Source from VaccineInfoSource (required)