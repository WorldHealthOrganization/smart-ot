Profile: OutbreakToolkitMeaslesDemographic
Title: "Outbreak Toolkit Measles- Demographics"
Parent: Patient

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/OutbreakToolkitMeaslesDemographic"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* age               0..1    Quantity "Age"                 "Age (number of years) of the client calculated based on date of birth"
* race              0..1    Coding   "Race/Ethnicity"      "Client's race and/or ethnicity, if appropriate in country setting"
* placeOfInfection  0..1    string   "Place of Infection"
* countryOfBirth    0..1    string   "Country of Birth"