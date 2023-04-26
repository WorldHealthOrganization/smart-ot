Logical: SOT_T1_Notification_Interview
Title: "Surveillance & Outbreak Toolkit T1 - Notification Interview"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTMeasles_T1_Notification_Interview"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* PlaceOfReporting	1..1	Address	"Place of reporting"	"Place of reporting (for example, county or district)"
* DateOfNotification	1..1	 date	"Date of notification"	"Date of notification"
* DateOfInvestigation	1..1	 date	"Date of investigation"	"Date of investigation"
* ReportedBy	1..1	string	"Reported by"	"Name of clinician who supects measles (or rubella)"
* HealthServiceName	1..1	string	"Health service name"	"Health service name"
* HealthServiceTelephone	1..*	ContactPoint	"Health service telephone"	"Health service telephone"
* DateOfConsultation	0..1	 date	"Date of consultation"	"Date of consultation"
* DateOfHomeVisit	0..1	 date	"Date of home visit"	"Date of home visit"
* DateReportedLocal	0..1	 date	"DateReported, Local"	"DateReported, Local"
* DateReportedNational	0..1	 date	"DateReported, National"	"DateReported, National"
* DetectedBy	1..1	CodeableConcept	"Detected By"	"Detected By"
* TypeOfProviderReporting	1..1	CodeableConcept	"Type Of Provider Reporting"	"Type Of Provider Reporting"
* InitialDiagnosis	0..1	CodeableConcept	"Initial Diagnosis"	"Initial Diagnosis"