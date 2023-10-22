Logical: SOTMeaslesDemographic
Title: "Surveillance & Outbreak Toolkit Measles- Demographics"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTMeaslesDemographic"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* UniqueId	 1..1 	id
  "Unique identification"	"Generated for new clients or a universal ID, if used in the country"
* Name	 1..1 	HumanName
  "Client's name"	"Client's full name"
* DateOfBirth	1..1	 date
  "Date of birth"	"The client's date of birth (DOB), if known"
* Age	 1..1 	Quantity
  "Age (number of years)"	"Age of the client if date of birth is not known"
* Sex	 1..1 	code
  "Sex at birth"	"Assigned sex at birth of the client"
* Ethnicity	 0..1 	code
  "Race/Ethnicity"	"Client's race and/or ethnicity, if appropriate in country setting"
* PlaceOfResidence	 1..1 	Address
  "Client's address (city, district, and province)"	"Client's home address or address that the client is consenting to disclose"
* CountryofBirth	 1..1 	string
  "Country of birth"	"Country of birth"
* Landmark	 0..1 	string	"Landmark"
  "A landmark to locate the house"
* LocalityType	 1..1 	code 
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
* LocalityType from LocType (required)
* Sex from BiologicalSex (required)