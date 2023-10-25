Logical: SOTMeaslesContactTracing
Title: "Surveillance & Outbreak Toolkit Measles- Contact Tracing"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTMeaslesContactTracing"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

/* * ContactsBeforeSymptom 0..1 markdown "Contacts 7-23 days before symptom onset" "Persons who came in contact with the case 7–23 days before symptom onset (source of case’s infection). Determine if any of them had rash illness with fever. exposed by the case)"
* ContactsAroundRash 0..1 markdown "Potential persons exposed by the case" "Persons who came in contact with the case in the four days prior to and four days after rash onset "
* PregnantWomanContact 0..1 CodeableConcept "Was the patient in contact with any pregnant woman?" "Was the patient in contact with any pregnant woman?"
* Names 0..* string "Names, if yes" "Names" */
* caseSearchConducted 1..1 code "Were active case-searches conducted?" "Were active case-searches conducted?"
* noOfsuspectCases 0..1 Quantity "If Yes, Number of suspect cases detected during active case-search" "If Yes, Number of suspect cases detected during active case-search"
* pregnantContact 1..1 code "Was the patient in contact with any pregnant woman?" "Was the patient in contact with any pregnant woman?"
* pregnantContactNames 0..1 string "If Yes, Name(s)" "If Yes, Name(s)"
* localCasesPresent 1..1 code "Are there other cases present in the case’s municipality of residence?" "Are there other cases present in the case’s municipality of residence?"
* travelledOutside 1..1 code "Did the patient travel outside his/her province/state of residence 7-23 days before rash onset?" "Did the patient travel outside his/her province/state of residence 7-23 days before rash onset?"
* travelDetails 1..1 SOTMeaslesTravelDetails "Travel History" "Travel History"
  * placeOfTravel 0..1 string "Cities/Countries" "Cities/Countries"
  * arrivalDate 0..1 date "Date of arrival" "Date of arrival"
  * departureDate 0..1 date "Date of departure" "Date of departure"
* infectionSetting 1..1 code "Setting where infected?" "Setting where infected?"
* specifyInfectionSetting 0..1 string "Specify" "Specify"
* pregnantContact from YesNoUnknown (required)
* caseSearchConducted from YesNoUnknown (required)
* localCasesPresent from YesNoUnknown (required)
* travelledOutside from YesNoUnknown (required)
* infectionSetting from InfectionSetting (required)


