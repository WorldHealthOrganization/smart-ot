Alias: $InitDiag = http://worldhealthorganization.github.io/smart-ot/ValueSet/InitDiag

ValueSet:      InitDiag
Id:	           InitDiag
Title:	       "SOT Measles Initial Diagnosis"
Description:   "SOT Measles Initial Diagnosis"
* ^status = #draft
* ^url = $InitDiag
* ^version = "0.2.1"

* ^expansion.identifier = "urn:uuid:c060c134-871f-43be-b1ee-5dfface2c18f"
* ^expansion.timestamp = "2023-05-02T20:23:35+05:30"
* ^expansion.total = 6
* ^expansion.parameter[0].name = "excludeNested"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://worldhealthorganization.github.io/smart-ot/CodeSystem/InitDiag|0.2.1"
* ^expansion.contains[0].system = "http://worldhealthorganization.github.io/smart-ot/CodeSystem/InitDiag"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Measles"
* ^expansion.contains[+].system = "http://worldhealthorganization.github.io/smart-ot/CodeSystem/InitDiag"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Rubella"
* ^expansion.contains[+].system = "http://worldhealthorganization.github.io/smart-ot/CodeSystem/InitDiag"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Dengue"
* ^expansion.contains[+].system = "http://worldhealthorganization.github.io/smart-ot/CodeSystem/InitDiag"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Other Rash illness"
* ^expansion.contains[+].system = "http://worldhealthorganization.github.io/smart-ot/CodeSystem/InitDiag"
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "Other Non-Rash illness"
* ^expansion.contains[+].system = "http://worldhealthorganization.github.io/smart-ot/CodeSystem/InitDiag"
* ^expansion.contains[=].code = #99
* ^expansion.contains[=].display = "Unknown"