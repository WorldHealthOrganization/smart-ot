Logical: SOTT1ExposureWaterFood
Title: "Surveillance & Outbreak Toolkit T1  Exposure - Water and Food"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTT1ExposureWaterFood"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* primaryWaterSource 0..1 SOTT1ExposureWaterDetails "Describe primary source of water"
* secondaryWaterSource 0..1 SOTT1ExposureWaterDetails "Describe secondary source of water"
* thirdWaterSource 0..1 SOTT1ExposureWaterDetails "Describe third source of water"
* additionalInformation	0..1	string	"Additional information regarding water source or use"	"Describe any additional information regarding water source or use"
* eventAttendance	0..1	code	"Have you attended an event (e.g. festival, wedding, etc.) where food was served and you know of others who are also sick"	"Have you attended an event (e.g. festival, wedding, etc.) where food was served and you know of others who are also sick"
* commonFood	0..1	string	"Specify common foods consumed"	"Describe the specific common foods consumed"
* foodShared	0..1	code	"Have you shared a meal with others who you know are also experiencing the same symptoms?"	"Have you shared a meal with others who you know are also experiencing the same symptoms?"
* specifyFoodsConsumed	0..1	string	"Specify foods consumed"	"Specify the foods shared with others with the same symptoms"
* specifyWhenFoodSharing	0..1	string	"Specify when these meals were shared"	"Specify when these meals were shared"
* foodDiseaseSuspected	0..1	code	"Does the patient suspect a specific food or the beverage to be the cause of the disease"	"Does the patient suspect a specific food or the beverage to be the cause of the disease"
* explainSuspicion	0..1	string	"Explain why this suspicion"	"Explain why this suspicion"
* anyNotableChanges	0..1	code	"Were there any notable changes to the types of sources of food or drinks normally consumed prior to symptom onset"	"Were there any notable changes to the types of sources of food or drinks normally consumed prior to symptom onset"
* specifyChanges	0..1	string	"Specify changes"	"Describe the changes to the types of sources"
* morningFood 0..1 SOTT1ExposureFoodDetails "Details of food in the morning"
* middayFood 0..1 SOTT1ExposureFoodDetails "Details of food at mid-day"
* eveningFood 0..1 SOTT1ExposureFoodDetails "Details of food in the evening"
* morningBeverage 0..1 SOTT1ExposureFoodDetails "Details of beverage in the morning"
* middayBeverage 0..1 SOTT1ExposureFoodDetails "Details of beverage at mid-day"
* eveningBeverage 0..1 SOTT1ExposureFoodDetails "Details of beverage in the evening"
* otherObservation	0..1	string	"Any other observation to share regarding food and drinks"	"Any other observation to share regarding food and drinks"
* eventAttendance from YesNoUnknown (required)
* foodShared from YesNoUnknown (required)
* foodDiseaseSuspected from YesNoUnknown (required)
* anyNotableChanges from YesNoUnknown (required)