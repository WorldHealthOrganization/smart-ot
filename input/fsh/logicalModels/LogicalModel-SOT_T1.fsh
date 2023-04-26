Logical: SOT-T1
Title: "Surveillance & Outbreak Toolkit T1"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOT-T1"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* NotificationInterview 1..1 SOT-T1-Notification-Interview "Interview" "Interview"
* CaseInfo  1..1   SOT-T1-Case-Info "Identification"    "Identification"
* Clinical  1..1 SOT-T1-Case-Info "Clinical"   "Clinical"
* Exposures 1..1 SOT-T1-Exposure "Exposures" "Exposures"
* Laboratory 1..1 SOT-T1-Laboratory "Laboratory" "Laboratory"
* Conclusion 1..1 SOT-T1-Conclusion "Conclusion" "Conclusion"