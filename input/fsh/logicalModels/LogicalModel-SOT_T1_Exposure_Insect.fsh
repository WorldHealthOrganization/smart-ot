Logical: SOTT1ExposureInsect
Title: "Surveillance & Outbreak Toolkit T1  Exposure - Insect"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTMeaslesT1ExposureInsect"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* insectSting	0..1	code	"Did the patient get stung/bitten by any insect, beetle, tick or other?"	"Did the patient get stung/bitten by any insect, beetle, tick or other?"
* specifyInsectExposure	0..1	string	"Specify the insect and exposure"	"Specify the insect and exposure"
* observedManyInsects	0..1	code	"Did the patient notice an increase in the number of insects, ticks, beetles or others"	"Did the patient notice an increase in the number of insects, ticks, beetles or others"
* describeObservation	0..1	string	"Specify the increase"	"Specify the increase"
* observedNewInsects	0..1	code	"Did the patient observe any new insects, beetles, ticks or other"	"Did the patient observe any new insects, beetles, ticks or other"
* describeNewObservation	0..1	string	"Specify this new observation"	"Specify this new observation"
* insectSting from YesNoUnknown (required)
* observedManyInsects from YesNoUnknown (required)
* observedNewInsects from YesNoUnknown (required)