Logical: SOT_T1_Case_Info
Title: "Surveillance & Outbreak Toolkit T1 - Case Information"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOT_T1_Case_Info"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* UniqueId	 1..1 	id
  "Unique identification"	"Generated for new clients or a universal ID, if used in the country"
* Name	 0..1 	HumanName
  "Client's name"	"Client's full name"
* DateOfBirth	0..1	 date
  "Date of birth"	"The client's date of birth (DOB), if known"
* Age	 0..1 	Quantity
  "Age (number of years)"	"Age of the client if date of birth is not known"
* Sex	 1..1 	CodeableConcept
  "Sex at birth"	"Assigned sex at birth of the client"
* Ethnicity	 0..1 	CodeableConcept
  "Race/Ethnicity"	"Client's race and/or ethnicity, if appropriate in country setting"
* PlaceOfResidence	 1..1 	Address
  "Client's address (city, district, and province)"	"Client's home address or address that the client is consenting to disclose"
* CountryofBirth	 1..1 	string
  "Country of birth"	"Country of birth"
* Landmark	 0..1 	string	"Landmark"
  "A landmark to locate the house"
* LocalityType	 1..1 	CodeableConcept
  "Type of locality"	"Type of Locality"
* Guardian	 0..1 	HumanName
  "Name of mother/Guardian"	"Name of mother/Guardian"
* Telephone	 0..1 	ContactPoint
  "Telephone"	"Telephone"
* Occupation	 0..1 	string
  "Occupation"	"Occupation"
* WorkAddress	 0..1 	Address
  "Work or school address"	"Work or school address"
* PlaceOfInfection	 0..1 	string
  "Place of infection"	"Place of infection"