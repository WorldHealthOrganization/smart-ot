Logical: SOTT1ClinicalTreatments
Title: "Surveillance & Outbreak Toolkit T1 Clinical - Treatments"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1ClinicalTreatments"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* priorTreatment 0..1 code "Treatments received by the patient for this episode prior to admission" "Did the patient receive treatments for this episode prior to admission"
* priorTreatment from $YesNo (required)
* priorTreatmentInfo 0..* SOTT1ClinicalTreatmentInfo "Describe treatment received prior to admission" "Describe treatment received prior to admission"
* treatmentDuringAdmission 0..1 code "Treatments received by the patient for this episode during admission" "Did the patient receive treatments for this episode during admission"
* treatmentDuringAdmission from $YesNo (required)
* treatmentDuringAdmissionInfo 0..* SOTT1ClinicalTreatmentInfo "Describe Treatments received by the patient for this episode during admission" "Describe Treatments received by the patient for this episode during admission"
* traditionalTreatment	0..1	code	"Traditional treatment received"	"Did the patient receive treament from a traditional healer"
* specifyTraditionalTreatment	0..1	string	"Specify traditional treatment"	"Specify the treatment received from the traditional healer"
* betterWithTraditionalTreatment	0..1	code	"Did the traditional treatment improve the patient's medical state"	"Did the traditional treatment improve the patient's medical state"
* transfusion	0..1	code	"At any time during hospitalization, did the patient receive a blood transfusion"	"At any time during hospitalization, did the patient receive a blood transfusion"
* otherTreatmentInfo	0..1	string	"Any other information regarding treatment history"	"Describe any other information regarding treatment history"
* traditionalTreatment from YesNoUnknown (required)
* betterWithTraditionalTreatment from YesNoUnknown (required)
* transfusion from YesNoUnknown (required)