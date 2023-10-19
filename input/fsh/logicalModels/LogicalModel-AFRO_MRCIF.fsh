Logical: AFROMRCIF
Title: "MEASLES/ RUBELLA SUSPECTED CASE REPORTING FORM"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/AFROMRCIF"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* ReportingSource   1..1    AFROMRCIFReportingSource   "Reporting Souce"   "Reporting Source"
* Demographics  1..1 AFROMRCIFDemographic   "Demographics"    "Demographics"
* VaccinationStatus 1..* AFROMRCIFVaccinationStatus "Vaccination Status" "Vaccination Status"
* CaseInvestigation 1..1 AFROMRCIFCaseInvestigation "Case Investigation" "Case Investigation"
* Clinical  1..1 AFROMRCIFClinical "Clinical"   "Clinical"
* Classification 1..1 AFROMRCIFClassification "Classification" "Classification"
* LaboratoryResults 1..* AFROMRCIFLaboratoryResults "Laboratory Results" "Laboratory Results"

