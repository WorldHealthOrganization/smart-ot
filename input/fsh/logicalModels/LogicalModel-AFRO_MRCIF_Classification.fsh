Logical: AFROMRCIFClassification
Title: "Surveillance & Outbreak Toolkit Measles- Classification"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/AFROMRCIFClassification"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* FinalClassification 1..1 Coding "Final Case Classification" "Final Case Classification"
* FinalClassification from FinalClassification (required)
* ReportedBy	1..1	string	"Reported by"	"Person Completing the form: Name"