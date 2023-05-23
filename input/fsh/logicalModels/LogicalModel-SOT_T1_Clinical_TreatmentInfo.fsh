Logical: SOTT1ClinicalTreatmentInfo
Title: "Surveillance & Outbreak Toolkit T1 Clinical - Treatment Info"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1ClinicalTreatmentInfo"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* treatmentName 0..1 string "Type/name treatment" 
* dailyDose 0..1 string "Daily dose"
* routeOfAdministration 0..1 code "Route of administration"
* startDate 0..1 date "Start date"
* endDate 0..1 date "End date"
* routeOfAdministration from RouteOfAdministration (required)