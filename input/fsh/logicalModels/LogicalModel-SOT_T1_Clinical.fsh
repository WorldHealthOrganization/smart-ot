Logical: SOTT1Clinical
Title: "Surveillance & Outbreak Toolkit T1 Clinical"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1Clinical"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* CourseOfDisease 1..1 BackboneElement "Course of Disease" "Course of Disease"
  * symptomOnsetDate	1..1	date	"date of onset of symptoms*:____/____/______"	"date of first appearance of the signs or symptoms of the illness/disease."
  * presentedToHCFDate	0..1	date	"For this episode, date first presented to health facility:___/___/_____"	"date the case first presentated to health facility. Caution: review potential duplicate data capturing with Section 1 before inclusion."
  * admitted	1..1	code	"Currently admitted in health facility ?:"	"Was the case hospitalized, admitted to a hospital or other health facility as an inpatient?"
  * admitted from http://terminology.hl7.org/ValueSet/v2-0136 (required)
  * admittedHCFName	0..1	string	"name:"	"If case admitted, name of the health facility where the case was admitted."
  * outcome	1..1	code	"Outcome of illness* (circle):"	"Outcome of illness. Where possible, verify status after a suitable period of time [user defined] and update."
  * outcomeEvaluatedDate	1..1	date	"date outcome was evaluated:___/___/_____"	"date if the case abandon, recover or died"
  * outcomeDate	1..1	date	"date* of recovery, default or death:___/___/_____"	"date if the case abandon, recover or died"
  * Sequelae	0..1	code	"Sequelae after recovery"	"Complications of disease. To be defined based on disease. Is there a pathological condition resulting from a previous disease, injury, therapy, or other trauma"
  * Sequelae from http://terminology.hl7.org/ValueSet/v2-0136 (required)
  * specifySequelae	0..1	string	"Specify sequelae"	"Describe this pathological condition resulting from a previous disease, injury, therapy, or other trauma"
  * diseaseAdditionalInfo	0..1	string	"More on course of disease"	"Additional information about the development of the disease over time"