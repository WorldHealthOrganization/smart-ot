Logical: SOTMeaslesReportingSource
Title: "Surveillance & Outbreak Toolkit Measles- Reporting Source"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTMeaslesReportingSource"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* PlaceOfReporting	1..1	Address	"Place of reporting"	"Place of reporting (for example, county or district)"
* DateOfNotification	1..1	 date	"Date of notification"	"Date of notification"
* DateOfInvestigation	1..1	 date	"Date of investigation"	"Date of investigation"
* ReportedBy	1..1	string	"Reported by"	"Name of clinician who supects measles (or rubella)"
* HealthServiceName	1..1	string	"Health service name"	"Health service name"
* HealthServiceTelephone	1..*	ContactPoint	"Health service telephone"	"Health service telephone"
* DateOfConsultation	1..1	 date	"Date of consultation"	"Date of consultation"
* DateOfHomeVisit	0..1	 date	"Date of home visit"	"Date of home visit"
* DateReportedLocal	0..1	 date	"DateReported, Local"	"DateReported, Local"
* DateReportedNational	0..1	 date	"DateReported, National"	"DateReported, National"
* DetectedBy	1..1	code	"Detected By"	"Detected By"
* TypeOfProviderReporting	1..1	code	"Type Of Provider Reporting"	"Type Of Provider Reporting"
* InitialDiagnosis	1..1	code	"Initial Diagnosis"	"Initial Diagnosis"
* DetectedBy from DetectedBy (required)
* TypeOfProviderReporting from ProvType (required)
* InitialDiagnosis from InitDiag (required)