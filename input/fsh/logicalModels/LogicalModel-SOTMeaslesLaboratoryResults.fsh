Logical: SOTMeaslesLaboratoryResults
Title: "Surveillance & Outbreak Toolkit Measles- Laboratory Resultss"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTMeaslesLaboratoryResults"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* SpecimenCollectionDate	1..1	 date	"Date of specimen(s) collection"	"Date of specimen(s) collection"
* SpecimenSentDate	0..1	 date	"Date specimen(s) sent to laboratory"	"Date specimen(s) sent to laboratory"
* SpecimenRecdDate	0..1	 date	"Date specimen(s) received in laboratory"	"Date specimen(s) received in laboratory"
* LabName 0..1 string "Laboratory Name" "Laboratory Name"
* LabResultsDate	0..1	 date	"Date of results from laboratory"	"Date of results from laboratory"
* LabResults	0..1	code	"Laboratory results (serology, viral detection,genotype)"	"Laboratory results (serology, viral detection,genotype)"
* Results 1..1 code "Result" "Result"
* Results from Result (required)
* SampleId 0..1 string "Sample ID" "Sample ID"
* SampleType 1..1 code "Type of specimen" "Type of specimen"
* SampleType from SampleType (required)
* TypeOfTest	0..1	code	"Type of test"	"Type of test"
* TypeOfTest from TestPerformed (required)
* Antigen	0..1	code	"Antigen"	"Antigen"
* Antigen from Antigen (required)
* SpecimenNumber	0..1	code	"Specimen number"	"Specimen number"
* SpecimenNumber from SpecimenNumber (required)
* ViralGenotype	0..1	string	"Viral Genotype, if detected"	"Viral Genotype, if detected"