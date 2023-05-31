Logical: SOTT1ExposureTravelHistory
Title: "Surveillance & Outbreak Toolkit T1  Exposure - Travel History"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTMeaslesT1ExposureTravelHistory"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* travelledOutside	1..1	code	"Did you travel* outside your residential area ?"	"Indicates if the respondent has travelled outside of the current IDP/town/village/city since XX weeks/months prior to their symptom onset."
* travelDetails 0..* BackboneElement "Details of travel" "Details of travel"
  * dateOfTravel	0..1	date	"Date of travel"	"When did the patient travel outside his current IDP/town/village/city since XX weeks/months prior to their symptom onset."
  * placeOfTravel	0..1	string	"From where to where"	"From where to where, did the patient travel outside his current IDP/town/village/city since XX weeks/months prior to their symptom onset."
  * transportType	0..1	string	"Type of transport used"	"What type of transport was used for this travel"
* travelledOutside from $YesNo (required)