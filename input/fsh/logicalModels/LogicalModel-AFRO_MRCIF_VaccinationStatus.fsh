Logical: AFROMRCIFVaccinationStatus
Title: "Surveillance & Outbreak Toolkit Measles- Vaccination Statuss"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/AFROMRCIFVaccinationStatus"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* VaccineType    1..1  Coding  "Type of Vaccine"   "Type of Vaccine"
* NumberOfDoses 1..1 Coding  "Number of doses received" "Number of measles containing vaccine doses received in routine EPI and/or SIAs - valid values: 1 - 4 doses"
* LastDoseDate 1..1 dateTime "Date of last dose" "Date of last dose"
* VaccineType from VaccineType (required)
* NumberOfDoses from NoOfDoses (required)
