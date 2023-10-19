Logical: AFROMRCIFLaboratoryResults
Title: "Surveillance & Outbreak Toolkit Measles- Laboratory Resultss"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/AFROMRCIFLaboratoryResults"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* SampleType 1..1 code "Specimen source" "Specimen source"
* SampleType from SampleType (required)
* SpecimenCollectionDate	1..1	 dateTime	"Date of specimen collection"	"Date of specimen collection"
* SpecimenSentDate	1..1	 date	"Date specimen sent to laboratory"	"Date specimen sent to laboratory"
* SpecimenRecdDate	1..1	 dateTime	"Date specimen received in laboratory"	"Date specimen received in laboratory"
* LabName 1..1 string "Laboratory Name" "Name of the national/ subnational lab processing and sending results"
* Results 1..1 Coding "Result" "Result"
* Results from Result (required)
* TypeOfTest	1..1	Coding	"Type of test"	"Type of test"
* TypeOfTest from TestType (required)
* ViralGenotype	0..1	string	"Viral Genotype, if detected"	"Viral Genotype, if detected"