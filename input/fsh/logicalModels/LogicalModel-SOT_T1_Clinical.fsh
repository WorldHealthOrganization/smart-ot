Logical: SOTT1Clinical
Title: "Surveillance & Outbreak Toolkit T1 Clinical"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1Clinical"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* courseOfDisease 1..1 BackboneElement "Course of Disease " "Course of Disease"
  * symptomOnsetDate	1..1	date	"date of onset of symptoms*:____/____/______"	"date of first appearance of the signs or symptoms of the illness/disease."
  * presentedToHCFDate	0..1	date	"For this episode, date first presented to health facility:___/___/_____"	"date the case first presentated to health facility. Caution: review potential duplicate data capturing with Section 1 before inclusion."
  * admitted	1..1	code	"Currently admitted in health facility ?:"	"Was the case hospitalized, admitted to a hospital or other health facility as an inpatient?"
  * admitted from YesNo (required)
  * admittedHCFName	0..1	string	"name:"	"If case admitted, name of the health facility where the case was admitted."
  * outcome	1..1	code	"Outcome of illness* (circle):"	"Outcome of illness. Where possible, verify status after a suitable period of time [user defined] and update."
  * outcome from PatientOutcome (required)
  * outcomeEvaluatedDate	1..1	date	"date outcome was evaluated:___/___/_____"	"date if the case abandon, recover or died"
  * outcomeDate	1..1	date	"date* of recovery, default or death:___/___/_____"	"date if the case abandon, recover or died"
  * sequelae	0..1	code	"Sequelae after recovery"	"Complications of disease. To be defined based on disease. Is there a pathological condition resulting from a previous disease, injury, therapy, or other trauma"
  * sequelae from YesNo (required)
  * specifySequelae	0..1	string	"Specify sequelae"	"Describe this pathological condition resulting from a previous disease, injury, therapy, or other trauma"
  * diseaseAdditionalInfo	0..1	string	"More on course of disease"	"Additional information about the development of the disease over time"
* onSetType	0..1	code	"Onset:"	"Was the onset of the disease unexpected and sudden?"
* fever	0..1	code	"History of fever"	"Subjective or self-reported fever or history of feeling feverish regardless of measured body temperature."
* fever from YesNoUnknown (required)
* temperature	0..1	Quantity	"Temperature (degrees):"	"Measured body temperature"
* chills	0..1	code	"Chills"	"Subjective or self-reported fever or history of feeling feverish regardless of measured body temperature."
* chills from YesNoUnknown (required)
* sweat	0..1	code	"Profuse sweating"	"Sweating or Perspiration"
* sweat from YesNoUnknown (required)
* intensePain	0..1	code	"Intense pain"	"Indicate site(s) of intense pain: headaches (pain anywhere in the region of the head or neck), myalgia (abnormal pain in the muscles), arthralgia (abnormal pain in one or more joints), back pain, chest pain, general pain, other site"
* intensePain from YesNoUnknown (required)
* headache	0..1	code	"Head pain"	"Head pain (headache)"
* headache from YesNo (required)
* musclePain	0..1	code	"Muscular pain"	"Muscular pain"
* musclePain from YesNo (required)
* chestPain	0..1	code	"Chest pain"	"Chest pain"
* chestPain from YesNo (required)
* abdominalPain	0..1	code	"Abdominal pain"	"Stomach or abdominal pain or cramping, acute or chronic, localized or diffuse pain in the abdominal cavity."
* abdominalPain from YesNo (required)
* jointPain	0..1	code	"Joint pain"	"Joint pain"
* jointPain from YesNo (required)
* otherSymptoms	0..1	string	"Other, specify"	"Other symptoms, specify:"
* bleeding	0..1	code	"Observed abnormal bleeding"	"If bleeding reported or observed, indicate site of abnormal bleeding: gums, mouth, nose, vomit, stool, urine, vagina, at or from injection sites."
* sunkenEyes	0..1	code	"Dehydration (thirst, sunken eyes/skin pinch)"	"Thrust, sukken eyes, skinfold"
* sunkenEyes from YesNo (required)
* shock	0..1	code	"Signs of shock"	"Septic, haemorrhagic or cardiogenic shock"
* shock from YesNoUnknown (required)
* fatigue	0..1	code	"Intense fatique or weakness"	"Intense fatigue, an abnormal state of drowsiness (lethargy or feeling lethargic), cannot conduct daily activity, lack of strengh"
* fatigue from YesNo (required)
* height	0..1	Quantity	"Height"	"Height (in meters/centimeters or in foot/inches)"
* weight	0..1	Quantity	"Weight"	"Weight measured in kilograms"
* otherSignsSymptoms	0..1	string	"Other signs and symptoms, specify"	"Other signs, specify:"
* complains	0..1	string	"Main complains expressed by the patient"	"List complains"
* cardiology 0..1 SOTT1ClinicalCardiology "Cardiology" "Cardiology"
* respiratory 0..1 SOTT1ClinicalRespiratory "Respiratory" "Respiratory"
* gastrointestinal 0..1 SOTT1ClinicalGastroIntestinal "Gastrointestinal" "Gastrointestinal"
* neurology 0..1 SOTT1ClinicalNeurology "Neurology" "Neurology"
* cutaneous 0..1 SOTT1ClinicalCutaneous "Cutaneous" "Cutaneous"
* ENT 0..1 SOTT1ClinicalENT "Ear Nose and Throat" "Ear Nose and Throat"
* urogynecology 0..1 SOTT1ClinicalUrogynecology "Urogynecology" "Urogynecology"
* comorbidity 0..1 SOTT1ClinicalComorbidity "Comorbidity or underlying conditions" "Comorbidity or underlying conditions"
* treatments 0..1 SOTT1ClinicalTreatments "Treatments" "Treatments"
* vaccination 0..1 SOTT1ClinicalVaccination "Vaccination" "Vaccination"
