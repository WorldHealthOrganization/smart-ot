Logical: SOTMeaslesClinical
Title: "Surveillance & Outbreak Toolkit Measles- Clinical"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTMeaslesClinical"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* RashOnsetDate	0..1	date	"Date of rash onset"	"Date of rash onset"
* Symptoms	1..1	code	"Symptoms"	"Symptoms"
* Fever 1..1 code "Fever" "Fever"
* Fever from YesNoUnknown (required)
* Rash 1..1 code "Rash" "Rash"
* Rash from YesNoUnknown (required)
* Cough 1..1 code  "Cough?" "Cough"
* Cough from YesNoUnknown (required)
* Conjunctivitis 1..1 code "Conjunctivitis?" "Conjunctivitis"
* Conjunctivitis from YesNoUnknown (required)
* Coryza 1..1 code "Coryza?" "Coryza"
* Coryza from YesNoUnknown (required)
* KoplikSpots 1..1 code "Koplik Spots?" "Koplik Spots"
* KoplikSpots from YesNoUnknown (required)
* Lymphadenopathy 1..1 code "Lymphadenopathy?" "Lymphadenopathy"
* Lymphadenopathy from YesNoUnknown (required)
* JointPain 1..1 code "Arthralgia?" "Arthralgia"
* JointPain from YesNoUnknown (required)
* SevereComplications	0..1	code	"Severe Complications"	"Severe Complications"
* HistoryOfHospitalization	1..1	code	"History of hospitalization in 23 days prior to rash onset?"	"History of hospitalization in 23 days prior to rash onset?"
* HistoryOfHospitalization from YesNoUnknown (required)
* DatesOfHospitalization	0..1	 Period	"Dates of hospitalization"	"Dates of hospitalization"
* HospitalizedReason	1..1	code	"Hospitalized because of this current fever rash diagnosis?"	"Hospitalized because of this current fever rash diagnosis?"
* Outcome	1..1	code	"Outcome (patient survived or died)"	"Outcome (patient survived or died)"
* Outcome from PatientOutcome (required)
* DateOfDeath	0..1	 date	"Date of death"	"Date of death"
* NumberOfPrevious	0..1	Quantity	"Number of previous pregnancies*"	"Number of previous pregnancies*"
* PregnancyStatus	1..1	code	"Pregnancy status*"	"Pregnancy status*"
* PregnancyStatus from YesNoUnknown (required)
* GestationWeeks	0..1	Quantity	"Number of weeks gestation at onset of illness*"	"Number of weeks gestation at onset of illness*"
* PriorEvidence	0..1	string	"Prior evidence or date of rubella serologic immunity, or both*"	"Prior evidence or date of rubella serologic immunity, or both*"
* PreviousPregnancies	0..1	string	"Number and dates of previous pregnancies and location (secondadministrative level or country) of these pregnancies*"	"Number and dates of previous pregnancies and location (secondadministrative level or country) of these pregnancies*"
* PregnancyOutcome	0..1	code	"Pregnancy outcome, when available*"	"Pregnancy outcome, when available*"
* FeverOnsetDate	0..1	 date	"Date of fever onset"	"Date of fever onset"
* TypeOfRash	0..1	code	"Type of rash"	"Type of rash"
* TypeOfRash from RashType (required)
* DurationOfRash	0..1	Quantity	"Duration of the rash in days"	"Duration of the rash in days"
* Temperature	0..1	Quantity	"Temperature (degree Celcius)"	"Temperature (degree Celcius)"
* HospitalName	0..1	string	"Hospital Name"	"Hospital Name"
* DateOfAdmission	0..1	 date	"Date of admission"	"Date of admission"
* HospitalRecordNumber	0..1	id	"Hospital record number"	"Hospital record number"
* primaryCauseOfDeath	0..1	string	"Primary cause of death"	"Primary cause of death"
* IntentedBirthPlacce	0..1	string	"Place where birth will likely take placed"	"Place where birth will likely take placed"
* Comments	0..1	string	"Comments"	"Comments"