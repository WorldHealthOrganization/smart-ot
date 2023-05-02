// @Name: Local Code Systems

// Define a local code system
Alias: $InitDiag = http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/InitDiag
Alias: $InitDiagcs =  http://ritikarawlani.github.io/smart-outbreak-measles/InitDiag

CodeSystem: InitDiag
Id:         InitDiagcs
Title:     "Initial Diagnosis code system"
Description: "Init Diag"

// For information about creating a code system in the `terminology.hl7.org` namespace, see
// this documentation on the UTG process: https://confluence.hl7.org/display/VMAH/Vocabulary+Maintenance+at+HL7
// You can also create a URL local to your Implementation Guide like `http://hl7.org/fhir/uv/your-ig/CodeSystem/lymphnodes`
// The "Terminology" stream on chat.fhir.org (free registration required) is a good place to ask
// questions about how to handle this for your specific use case (direct link: https://bit.ly/terminology-fhir-chat)
* ^url =  $InitDiagcs
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional

* #1 "Measles"
* #2 "Rubella"
* #3 "Dengue"
* #4 "Other Rash illness"
* #8 "Other Non-Rash illness"
* #99 "Unknown"

/* ValueSet:      InitDiag
Id:	           InitDiag
Title:	       "SOT Measles Initial Diagnosis"
Description:   """
"""
* ^status = #draft
* ^url = $InitDiag

* include codes from system $InitDiagcs */
ValueSet: InitDiag
Id: InitDiag
Title: "SOT Measles Initial Diagnosis"
* ^version = "0.2.1"
* ^status = #draft
* ^expansion.identifier = "urn:uuid:c060c134-871f-43be-b1ee-5dfface2c18f"
* ^expansion.timestamp = "2023-05-02T20:23:35+05:30"
* ^expansion.total = 6
* ^expansion.parameter[0].name = "excludeNested"
* ^expansion.parameter[=].valueBoolean = false
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "http://ritikarawlani.github.io/smart-outbreak-measles/InitDiag|0.2.1"
* ^expansion.contains[0].system = "http://ritikarawlani.github.io/smart-outbreak-measles/InitDiag"
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Measles"
* ^expansion.contains[+].system = "http://ritikarawlani.github.io/smart-outbreak-measles/InitDiag"
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Rubella"
* ^expansion.contains[+].system = "http://ritikarawlani.github.io/smart-outbreak-measles/InitDiag"
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Dengue"
* ^expansion.contains[+].system = "http://ritikarawlani.github.io/smart-outbreak-measles/InitDiag"
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Other Rash illness"
* ^expansion.contains[+].system = "http://ritikarawlani.github.io/smart-outbreak-measles/InitDiag"
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "Other Non-Rash illness"
* ^expansion.contains[+].system = "http://ritikarawlani.github.io/smart-outbreak-measles/InitDiag"
* ^expansion.contains[=].code = #99
* ^expansion.contains[=].display = "Unknown"