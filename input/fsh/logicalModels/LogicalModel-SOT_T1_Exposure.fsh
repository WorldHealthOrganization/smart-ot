Logical: SOTT1Exposure
Title: "Surveillance & Outbreak Toolkit T1  Exposure"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTMeaslesT1Exposure"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* ContactsBeforeSymptom 0..1 markdown "Contacts 7-23 days before symptom onset" "Persons who came in contact with the case 7–23 days before symptom onset (source of case’s infection). Determine if any of them had rash illness with fever. exposed by the case)"
* ContactsAroundRash 0..1 markdown "Potential persons exposed by the case" "Persons who came in contact with the case in the four days prior to and four days after rash onset "
* PregnantWomanContact 0..1 CodeableConcept "Was the patient in contact with any pregnant woman?" "Was the patient in contact with any pregnant woman?"
* Names 0..* string "Names, if yes" "Names"