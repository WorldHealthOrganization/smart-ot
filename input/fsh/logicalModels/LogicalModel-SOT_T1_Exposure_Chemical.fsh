Logical: SOTT1ExposureChemical
Title: "Surveillance & Outbreak Toolkit T1  Exposure - Chemical"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTMeaslesT1ExposureChemical"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* chemicalExposureSuspected	0..1 code	"Chemical exposure suspected as the source of the outbreak"	"Does the patient suspect that chemical exposure may be the source of the outbreak"
* suspectedProduct	0..1 string	"Specify suspected product"	"If so, specify the chemical product"
* exposureSource 0..1		string	"Potential source of exposure"	"Elaborate on the possible source of the chemical product (factory, farm, etc)"
* exposurePlace	0..1	string	"Place of chemical exposure"	"Where is this possible source"
* exposureDuration 0..1	string	"Duration of potential exposure"	"How long (days, years) was the exposure"
* householdMemberDetails 0..* BackboneElement "Details of household members suspect of exposure"
* relationship	0..1 string	"Relationship with patient"	"Relationship with patient"
* occupation	0..1	string	"Occupation"	"Occupation"
* placeOfWork	0..1	string	"Place of work"	"Place of work"
* possibleExposure 0..1 string	"Possible chemical exposure"	"Possible chemical exposure"
* chemicalExposureSuspected from YesNoUnknown (required)