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
* LabResultsDate	0..1	 date	"Date of results from laboratory"	"Date of results from laboratory"
* LabResults	0..1	CodeableConcept	"Laboratory results (serology, viral detection,genotype)"	"Laboratory results (serology, viral detection,genotype)"
* TypeOfTest	0..1	CodeableConcept	"Type of test"	"Type of test"
* Antigen	0..1	CodeableConcept	"Antigen"	"Antigen"
* SpecimenNumber	0..1	CodeableConcept	"Specimen number"	"Specimen number"
* ViralGenotype	0..1	CodeableConcept	"Viral Genotype, if detected"	"Viral Genotype, if detected"