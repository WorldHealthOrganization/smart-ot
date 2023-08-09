Logical: SOTT1ClinicalENT
Title: "Surveillance & Outbreak Toolkit T1 Clinical - ENT"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTT1ClinicalENT"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* entDisorders	0..1	code	"Observed Ear/nose/throat disorders"	"Observed Ear/nose/throat disorders"
* conjunctivitis	0..1	code	"Conjunctivitis:"	"Conjunctivitis, inflammation (swelling, redness) of the conjunctiva."
* conjunctivitisInjection	0..1	code	"Conjunctival injection"	"Bleeding/haemorrhage into the eyes (conjunctival injections)."
* runnyNose	0..1	code	"Runny nose"	"Rhinorrhoea"
* earPain	0..1	code	"Ear pain"	"Ear pain"
* voiceHoarseness	0..1	code	"Hoarseness of voice"	"Hoarseness of voice"
* difficultySwallowing	0..1	code	"Difficulty swallowing:"	"Difficulty swallowing (dysphagia/odynophagia), difficulty or pain in the passage of solids or liquids from the mouth to the stomach."
* soreThroat	0..1	code	"Sore throat"	"Increase volume of the neck due to swollen glands"
* oralUlceration	0..1	code	"Oral ulcerations"	"Ulcers of the throat with or without pus and/or membrane"
* hypersalivation	0..1	code	"Hypersalivation"	"Hypersalivation"
* otherENTSigns	0..1	string	"Other ENT signs"	"Describe other ENT signs"
* entDisorders from YesNoUnknown (required)
* conjunctivitis	from YesNoUnknown (required)
* conjunctivitisInjection from YesNoUnknown (required)
* runnyNose	from YesNoUnknown (required)
* earPain	from YesNoUnknown (required)
* voiceHoarseness	from YesNoUnknown (required)
* difficultySwallowing from YesNoUnknown (required)
* soreThroat from YesNo (required)
* oralUlceration from YesNoUnknown (required)
* hypersalivation	from YesNoUnknown (required)