Profile:        MeaslesCIFComposition
Parent:         Composition
Id:             MeaslesCIFComposition
Title:          "Measles Case Investigation Form Composition"
Description:    """Measles Case Investigation Form Composition
"""
* ^publisher = "World Health Organization (WHO)"
* ^version = "Measles-0.1" 
* identifier 1.. MS
* identifier ^label = "Certificate Identifier"
* identifier.system 1.. MS
* identifier.value 1.. MS
* status MS
//* type = $LOINC#82593-5
//* type ^short = "Kind of composition (\"Measles\")"
//* type ^definition = "Specifies that this composition refers to a Measles"
* title 1.. MS
* title = "Digital Documentation of COVID-19 Certificate (Measles)"
* subject 1..1 MS
* subject.reference 1..1 MS
* subject only Reference(MeaslesPatient)
* attester 1..1 MS
* attester.mode = #official
* attester.party 1..1 MS
* attester.party only Reference(MeaslesOrganization)
* attester.party ^label = "Certificate issuer"
* event 0..1 
* event.period 0..1
* event.period.start ^label = "Certificate valid from"
* event.period.end ^label = "Certificate valid until"