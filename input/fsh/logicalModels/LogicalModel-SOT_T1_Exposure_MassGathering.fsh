Logical: SOTT1ExposureMassGathering
Title: "Surveillance & Outbreak Toolkit T1 Exposure - Mass Gathering"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1ExposureMassGathering"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* massGatheringParticipation	0..1	code	"Did the patient participate in mass gathering events"	"Did the patient participate in mass gathering events"
* gatheringDetails 0..* BackboneElement "Mass gathering event details"
  * dateOfEvent	0..1	date	"Date of event"	"When was this mass gathering event"
  * eventLocation	0..1	string	"Location"	"Where was this mass gathering event"
  * gatheringType	0..1	string	"Type of gathering and how many people attended"	"Describe the type of mass gathering and how many people attended (for instance: wedding, 200 people)"
* massGatheringParticipation from YesNoUnknown (required)