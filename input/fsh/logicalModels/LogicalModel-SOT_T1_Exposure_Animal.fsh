Logical: SOTT1ExposureAnimal
Title: "Surveillance & Outbreak Toolkit T1  Exposure - Animal"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTMeaslesT1ExposureAnimal"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* animalContact	0..1	code	"Were you in close proximity to any animals in the XX week/months prior to symptom onset?"	"Indicates if the respondent has been in close proximity to, or had direct contact with, any domestic animals, dead or alive, in the XX weeks/months prior to symptom onset"
* animalContactType	0..1	code	"Type of animal contact"	"Provides a coded list of the types of interaction the respondent had with the animals they listed in response to the question above"
* animalExposureDetails 0..* BackboneElement "Details of animal exposure" "Details of animal exposure"
  * animalDescription	0..1	string	"Animal species (name)"	"Provides a list of the types of domestic animals, dead or alive, the respondent had contact with in the XX weeks/months prior to symptom onset"
  * domesticatedWild	0..1	code	"Was the animal domesticated or wild"	"Was the animal domesticated or wild"
  * animalCondition	0..1	code	"Was the animal dead, sick, miscarrying or aborting"	"Was the animal dead, sick, miscarrying or aborting"
  * domesticatedWild from domesticatedWild (required)
  * animalCondition from YesNoUnknown (required)
* animalContact from YesNoUnknown (required)
* animalContactType from animalContactType (required)
