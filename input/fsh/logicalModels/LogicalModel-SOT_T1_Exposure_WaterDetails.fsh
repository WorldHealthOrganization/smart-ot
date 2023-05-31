Logical: SOTT1ExposureWaterDetails
Title: "Surveillance & Outbreak Toolkit T1  Exposure - Water Details"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTMeaslesT1ExposureWaterDetails"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* drinkingWaterSource	0..1	string	"Source of drinking water"	"Describe the source of drinking water (well, tap, river, borehole, piped)"
* waterCharacteristics	0..*	code	"Characteristics of drinking water"	"Was the water clear, filtered or treated (multiple answers possible)"
* comments	0..1	string	"Comments on drinking water"	"Any further comment on drinking water (smell? Appearance? Scarcety?)"
* nonDrinkingWaterSource	0..1	string	"Source of non-drinking water"	"Describe source of non-drinking water (water for washing, livestock, irrigation, etc)"
* waterCharacteristics from WaterCharacteristics (required)