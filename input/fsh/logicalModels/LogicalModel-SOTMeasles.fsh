Logical: SOTMeasles
Title: "Surveillance & Outbreak Toolkit Measles"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTMeasles"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* Demographics  1..1 SOTMeaslesDemographic   "Demographics"    "Demographics"
* ReportingSource   1..1    SOTMeaslesReportingSource   "Reporting Souce"   "Reporting Source"
* Clinical  1..1 SOTMeaslesClinical "Clinical"   "Clinical"
* LaboratoryResults 1..* SOTMeaslesLaboratoryResults "Laboratory Results" "Laboratory Results"
* VaccinationStatus 1..* SOTMeaslesVaccinationStatus "Vaccination Status" "Vaccination Status"
* ContactTracing 1..* SOTMeaslesContactTracing "Contact Tracing" "Contact Tracing"
* EpiData 1..1 SOTMeaslesEpiData "Epidemiological Data" "Epidemiological Data"
* Classification 1..1 SOTMeaslesClassification "Classification" "Classification"