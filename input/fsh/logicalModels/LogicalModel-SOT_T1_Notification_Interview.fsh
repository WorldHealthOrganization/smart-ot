Logical: SOTT1NotificationInterview
Title: "Surveillance & Outbreak Toolkit T1 - Notification Interview"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1NotificationInterview"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* date	0..1	date	"Date* of the day: _____/____/______"	"Date the case was interviewed."
* organization	0..1	string	"Organization/institution*:"	"Unit/Department/Organization that interviewer is representing. Note, label should be adapted to suite local context."
* country	0..1	string	"Country*:" "Administrative level 0: Country/territory/national boundary within which the case currently/usually resides.If transborders or international spread of outbreak"
* interviewerName	0..1	string	"Interviewer name:"	"Name of person conducting the interview and completing this form."
* interviewerTitle	0..1	string	"Interviewer function/title"	"Profession title or function of the person conducting the interview and completing this form."
* caseId	1..1	string	"Case ID*:"	"Unique case identification number."
* dateReported	0..1	date	"Date case first reported*:_____/______/________"	"The date when the Health Authorities were notified"
* reportedBy	0..1	code	"Case reported by:"	"The person or team or institution that reported this case (sick person)."
* reportingFacility	0..1	string	"Name of reporting facility*:"	"The name of the institution that reported this case"
* relationshipForCase	0..1	string	"If not the case, relation of person interviewed to the case:"	"If the person interviewed is not the case (not the sick person), provide relationship to the case (friend, bother, mother, etc.)"