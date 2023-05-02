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

ValueSet:      InitDiag
Id:	           InitDiag
Title:	       "SOT Measles Initial Diagnosis"
Description:   """
"""
* ^status = #draft
* ^url = $InitDiag

* include codes from system $InitDiagcs