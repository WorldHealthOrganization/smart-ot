Logical: AFROMRCIFClinical
Title: "Surveillance & Outbreak Toolkit Measles- Clinical"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/AFROMRCIFClinical"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft


* Fever 1..1 Coding "Fever" "Fever"
* Fever from YesNoUnknown (required)
* Rash 1..1 Coding "Generalized Rash" "Generalized Rash"
* Rash from YesNoUnknown (required)
* Cough 1..1 Coding  "Cough" "Cough"
* Cough from YesNoUnknown (required)
* Conjunctivitis 1..1 Coding "Red Eyes" "Red Eyes"
* Conjunctivitis from YesNoUnknown (required)
* Coryza 1..1 Coding "Running nose" "Running nose"
* Coryza from YesNoUnknown (required)
* Lymphadenopathy 1..1 Coding "Swollen lymph nodes" "Swollen lymph nodes behind ears"
* Lymphadenopathy from YesNoUnknown (required)
* JointPain 1..1 Coding "Joint pain/ swelling" "Joint pain/ swelling "
* JointPain from YesNoUnknown (required)
* HistoryOfHospitalization	1..1	Coding	"In/out-patient"	"In/out-patient"
* HistoryOfHospitalization from YesNoUnknown (required)
* Outcome	1..1	Coding	"Outcome"	"Outcome (patient survived or died)"
* Outcome from PatientOutcome (required)
* travelledOutside 1..1 Coding "Travel history" "History of travel outside the village/ town/ district in last 7 - 21 days before onset of rash"
* specifyInfectionSetting 1..1 string "Infection Setting" "Most probable place of exposure to measles/ rubella"
* travelledOutside from YesNoUnknown (required)