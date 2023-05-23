Logical: SOTT1ClinicalVaccination
Title: "Surveillance & Outbreak Toolkit T1 Clinical - Vaccination"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1ClinicalVaccination"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* vaccinated	0..1	code	"Did the patient receive a full vaccination course according to the national immunization schedule"	"Did the patient receive a full vaccination course according to the national immunization schedule"
* lastVaccineDate	0..1	date	"date of last vaccination received"	"date of last vaccination received"
* lastVaccineDisease	0..1	string	"Against which disease"	"Against which disease was the patient vaccinated"
* vaccineInfoSource	0..1	code	"Vaccination information obtained by?"	"Cite the source of vaccination history information"
* vaccineCardCopy	0..1	code	"Copy of vaccination card attached"	"Is a copy of the vaccination card attached"
* vaccinated from YesNoUnknown (required)
* vaccineCardCopy from YesNoUnknown (required)
* vaccineInfoSource from VaccineInfoSource (required)