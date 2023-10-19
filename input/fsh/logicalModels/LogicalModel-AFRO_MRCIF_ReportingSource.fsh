Logical: AFROMRCIFReportingSource
Title: "Surveillance & Outbreak Toolkit Measles- Reporting Source"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/AFROMRCIFReportingSource"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* UniqueId	 1..1 	id  "EPID Number"	"EPID Number:  Country-Province-District-year-onset-case #"
* HealthServiceName	1..1	string	"Reporting Health Facility"	"Reporting Health Facility"
* PlaceOfReporting	1..1	Address	"Place of reporting"	"Place of reporting (for example, county or district)"
* DateReportedNational	0..1	 instant	"DateReported, National"	"Date the form was received at national level"


