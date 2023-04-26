Logical: SOT_T1
Title: "Surveillance & Outbreak Toolkit Measles"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOT_T1"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* NotificationInterview 1..1 SOT_T1_Notification_Interview "Interview" "Interview"
* CaseInfo  1..1   SOT_T1_Case_Info "Identification"    "Identification"
* Clinical  1..1 SOT_T1_Case_Info "Clinical"   "Clinical"
* Exposures 1..1 SOT_T1_Exposure "Exposures" "Exposures"
* Laboratory 1..1 SOT_T1_Laboratory "Laboratory" "Laboratory"
* Conclusion 1..1 SOT_T1_Conclusion "Conclusion" "Conclusion"