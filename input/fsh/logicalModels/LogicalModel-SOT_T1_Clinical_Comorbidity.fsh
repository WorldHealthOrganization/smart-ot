Logical: SOTT1ClinicalComorbidity
Title: "Surveillance & Outbreak Toolkit T1 Clinical - Comorbidity"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTT1ClinicalComorbidity"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* pregnancy	0..1	code	"Pregancy"	"Is the patient pregant?"
* monthsPregnant	0..1	Quantity	"Months pregnant"	"How many month is the case pregnant"
* postPartum	0..1	code	"Post-partum (<6 weeks)"	"date of delivery"
* postPartumWeeks	0..1	Quantity	"Weeks post-partum"	"How many weeks since the delivery"
* underlyingConditions	0..1	code	"Underlying conditions"	"Does the patient have co-morbidity existing prior to admission that are active problems"
* chronicDisease	0..1	code	"Chronic disease"	"Is the patient suffering from a chronic disease?"
* specifyChronicDisease	0..1	string	"Specify chronic disease"	"Is the patient suffering from a chronic disease? If yes indicate name"
* acuteChronicDisease	0..1	code	"Associated acute or chronic disease, please specifiy"	"Is the patient suffering from an acute or chronic disease at the time of this illness?"
* specifyAcuteChronicDisease	0..1	string	"if yes, name:"	"Is the patient suffering from an acute or chronic disease at the time of this illness? If yes indicate name"
* immunodeficiency	0..1	code	"Immunodeficiency"	"Is the patient immunodeficient (Is the patient treated with drugs that decreased immune response)?"
* specifyImmunodeficiency	0..1	string	"Specify immunodeficiency"	"Describe the immunodeficiency"
* malnutrition	0..1	code	"Malnutrition"	"Severly underweight?"
* muac	0..1	Quantity	"MUAC (cm):"	"if possible provide the MUAC score"
* otherConditions	0..1	string	"Other conditions impacting health, specify"	"Describe other underlaying conditions that impact the health of the patient"
* pregnancy from YesNo (required)
* postPartum from YesNo (required)
* acuteChronicDisease from YesNo (required)
* immunodeficiency from YesNo (required)
* malnutrition from YesNo (required)
* underlyingConditions from YesNoUnknown (required)
* chronicDisease from YesNoUnknown (required)
