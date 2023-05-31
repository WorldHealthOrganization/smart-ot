Logical: SOTT1ExposureContacts
Title: "Surveillance & Outbreak Toolkit T1 Exposure - Contacts"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1ExposureContacts"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* interviewerName	0..1	string	"Interviewer name (Exposures)"	"Entre the function or title of the person filling in this section 'Exposures' of the questionnaire. It can be the same or a different person conducting the previous sections"
* interviewerTitle	0..1	string	"Function or title interviewer (Exposures)"	"Entre the name of the person filling in this section 'Exposures' of the questionnaire. It can be the same or a different person conducting the previous sections"
* noOfHouseholdMembers	0..1	Quantity	"How many household members do you living with ?"	"Respondent's number of household members (definition of household to be locally decided - might need to be set to total number for the month)"
* sickHouseholdMember	0..1	code	"Do you have any household members with similar illness or symptoms ?"	"Indicates if there are any other household members currently ill with a similar illness or sick with a similar illness in the last XX weeks/months"
* HouseholdMemberDetails 0..* BackboneElement "Describe details of sick house hold member" "Describe details of sick house hold member"
  * DateOfOnset	0..1	date	"Date of onset"	"When did your first household member become sick?"
  * NameAndDOB	0..1	string	"Name and date of birth"	"What was his/her age and name"
  * relationship	0..1	string	"Relationship"	"What was his/her relationship with the patient"
* sickContact	0..1	code	"Are you aware of people outside your household with similar illness or symptoms ?"	"Indicates if the respondent aware of any other community members (not listed as a household member) who are currently sick with a similar illness or were sick with one recently."
* ContactDetails 0..* BackboneElement "Describe details of sick contact" "Describe details of sick contact" 
  * DateOfOnset	0..1	date	"Date of onset"	"When did the first community member become sick"
  * nameAndRelationship	0..1	string	"Name and relationship"	"What was the first community member's name and relationship with the patient"
  * placeOfInteraction	0..1	string	"Place of interaction"	"Where was the place where the ill community member and the patient met"
* sickHouseholdMember from YesNoUnknown (required)
* sickContact from YesNoUnknown (required)