Alias: $BiologicalSex = http://worldhealthorganization.github.io/smart-ot/ValueSet/BiologicalSex
Alias: $AdministrativeGender = http://hl7.org/fhir/administrative-gender

ValueSet:      BiologicalSex
Id:	           BiologicalSex
Title:	       "SOT Biological Sex"
Description:   "Biological Sex"

* ^status = #draft
* include codes from system $AdministrativeGender
* exclude $AdministrativeGender#unknown "Unknown"
* exclude $AdministrativeGender#other "Other"