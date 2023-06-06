Logical: SOTT1ClinicalCutaneous
Title: "Surveillance & Outbreak Toolkit T1 Clinical - Cutaneous"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1ClinicalCutaneous"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* skinDisorders	0..1	code	"Observed skin disorders"	"Any observed skin disorders"
* rashOnsetDate	0..1	date	"If present, date of rash onset (DD/MM/YYYY):"	"If case had/has a rash, date that the rash started, or was first noticed."
* skinDisordersOnsetDate	1..1	date	"date of onset of skin disorders:____/____/______"	"date of first appearance of the signs or symptoms of skin disorder"
* rashDuration	0..1	Quantity	"If present, duration of rash (in day):"	"If case had/has a rash, total number of days the rash has been/was present/visible at the time the questionnaire was completed."
* rashType	0..1	code	"If present, type of rash:"	"If case had/has a rash, type or description of the rash. Note, recommended to pre-define categories depending on condition in question, (e.g. erythematous, maculopapular, vesicular, pustular, nodular, petechial, purpuric) and include other and unknown."
* localizationOfSkinDisorder	0..1	code	"Localization skin disorder"	"Place on the body of the skin disorder"
* location	0..1	string	"Specify location"	"Specify place of skin disorder if localized"
* skinItch	0..1	code	"Itching skin"	"Itching skin, cutaneous lesions indicating itching"
* skinNecrosis	0..1	code	"Skin necrosis"	"Necrosis lesions of the skin usually dominant on the extremities"
* skinUlceration	0..1	code	"Ulceration of the skin"	"Lesion dried or purulent, localised and limited"
* lymphadenopathy	0..1	code	"Enlarged nymph nodes"	"Lymphadenopathy,"
* lymphadenopathySite	0..1	string	"site (enlarged nymph nodes)"	"Lymphadenopathy, indicate where"
* photo	0..1	code	"Photo attached"	"Was a photo of the skin condition attached"
* otherSkinDisorders	0..1	string	"Other cutaneous disorders"	"Describe other skin disorders"
* skinDisorders from YesNoUnknown (required)
* skinItch from YesNoUnknown (required)
* skinNecrosis from YesNoUnknown (required)
* skinUlceration from YesNoUnknown (required)
* lymphadenopathy from $YesNo (required)
* photo from $YesNo (required)
* rashType from RashType (required)
* localizationOfSkinDisorder from LocalizationOfSkinDisorder (required)