Logical: SOTT1
Title: "Surveillance & Outbreak Toolkit T1"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTT1"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* NotificationInterview 1..1 SOTT1NotificationInterview "Interview" "Interview"
* CaseInfo  1..1   SOTT1CaseInfo "Identification"    "Identification"
* Clinical  1..1 SOTT1Clinical "Clinical"   "Clinical"
* Exposures 1..1 SOTT1Exposure "Exposures" "Exposures"
* Laboratory 1..1 SOTT1Laboratory "Laboratory" "Laboratory"
* Conclusion 1..* SOTT1Conclusion "Conclusion" "Conclusion"