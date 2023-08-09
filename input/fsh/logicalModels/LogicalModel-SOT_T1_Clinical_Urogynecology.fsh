Logical: SOTT1ClinicalUrogynecology
Title: "Surveillance & Outbreak Toolkit T1 Clinical - Urogynecology"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTT1Urogynecology"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* miscarriage	0..1	code	"Recent spontaneous abortion"	"Report of any abortion or miscarriage in the recent months"
* urogynecologicalDisorders	0..1	code	"Observed uro-gynecological disorders"	"Observed uro-gynecological disorders"
* vaginalBleeding	0..1	code	"Vaginal bleeding outside of menstruation period"	"Vaginal bleeding outside of menstruation period"
* vaginalDischarge	0..1	code	"Vaginal discharge"	"Vaginal discharge"
* darkUrine	0..1	code	"Dark urines"	"Urines colored dark"
* urinatingPain	0..1	code	"Pain when passing urines"	"Is urinating causing pain"
* noUrine	0..1	code	"Not passing urine in the last 12 hours"	"In the period of last 12 hours"
* otherUrogynecologicalSigns	0..1	string	"Any other uro-gynecological signs"	"Describe any other uro-gynecological signs"
* miscarriage from YesNoUnknown (required)
* urogynecologicalDisorders from YesNoUnknown (required)
* vaginalBleeding from YesNoUnknown (required)
* vaginalDischarge from YesNoUnknown (required)
* darkUrine from YesNoUnknown (required)
* urinatingPain from YesNoUnknown (required)
* noUrine from YesNoUnknown (required)