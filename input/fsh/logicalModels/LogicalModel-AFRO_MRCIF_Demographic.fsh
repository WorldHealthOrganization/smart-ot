Logical: AFROMRCIFDemographic
Title: "Surveillance & Outbreak Toolkit Measles- Demographics"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/AFROMRCIFDemographic"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft


* Name	 1..1 	HumanName  "Name of Patient"	"Name of Patient"
* DateOfBirth	1..1	 date  "Date of birth"	"The client's date of birth (DOB), if known"
* Age	 0..1 	Quantity  "Age (number of years)"	"Age of the client if date of birth is not known"
* Sex	 1..1 	Coding  "Sex at birth"	"Assigned sex at birth of the client"
* PlaceOfResidence	 1..1 	Address  "Client's address (city, district, and province)"	"Client's home address or address that the client is consenting to disclose"
* LocalityType	 1..1 	code "Type of locality"	"Type of Locality"
* LocalityType from LocType (required)
* Sex from BiologicalSex (required)