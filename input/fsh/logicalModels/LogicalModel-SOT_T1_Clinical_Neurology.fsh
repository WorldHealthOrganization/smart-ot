Logical: SOTT1ClinicalNeurology
Title: "Surveillance & Outbreak Toolkit T1 Clinical - Neurology"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1ClinicalNeurology"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* neurologicalDisorders	0..1	code	"Observed any neurological disorders"	"Observed any neurological disorders"
* paralysis	0..1	code	"Paralysis"	"Paralysis"
* flaccidParalysis	0..1	code	"Flaccid paralysis"	"Flaccid paralysis"
* spasticParalysis	0..1	code	"Spastic paralysis"	"Spastic paralysis"
* abnormalMovements	0..1	code	"Abnormal movements"	"Abnormal movements"
* seizures	0..1	code	"Seizures"	"Myoclonies, tremors, epilepsy, seizures/convulsions"
* mentalDisorders	0..1	code	"Mental Disorders: agitation, confusion"	"Mental Disorders: agitation, confusion"
* irritability	0..1	code	"Irritability/confusion"	"Presence of any conscious disorder"
* coma	0..1	code	"Drowsiness, coma"	"Absence of reaction to orders"
* stiffNeck	0..1	code	"Neck stiffness"	"Neck stiffnes"
* otherNeuroSigns	0..1	string	"Any other neurological sign"	"Any others not mentionned neurological signs observed"
* neurologicalDisorders from YesNo (required)
* seizures from YesNo (required)
* stiffNeck from YesNo (required)
* paralysis from YesNoUnknown (required)
* flaccidParalysis from YesNoUnknown (required)
* spasticParalysis from YesNoUnknown (required)
* abnormalMovements from YesNoUnknown (required)
* mentalDisorders from YesNoUnknown (required)
* coma from YesNoUnknown (required)


