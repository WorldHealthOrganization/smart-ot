Logical: SOTT1ExposurePersonalAssumption
Title: "Surveillance & Outbreak Toolkit T1  Exposure - Personal Assumption"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1ExposurePersonalAssumption"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* additionalInformation	0..1	string	"Any additional information to share regarding chemical exposure"	"Specify any additional information to share about a possible chemical exposure"
* source	0..1	string	"What (and why?) does the patient think might be the source of this disease or facilitating its spread"	"What (and why?) does the patient think might be the source of this disease or facilitating its spread"
* time	0..1	string	"For how long does the patient think this event has been going on in the community"	"For how long does the patient think this event has been going on in the community"
* previousEvent	0..1	code	"Does the patient know about any similar outbreak or event that happened previously"	"Does the patient know about any similar outbreak or event that happened previously"
* specifyPreviousEvent	0..1	string	"Please specify this previous event"	"Please specify this previous event"
* previousEvent from YesNoUnknown (required)