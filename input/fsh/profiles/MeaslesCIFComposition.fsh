Alias: $LOINC = http://loinc.org

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
* type = $LOINC#55751-2
* title 1.. MS
* title = "Measles Case Investigation Form"
* subject 1..1 MS
* subject.reference 1..1 MS
* subject only Reference(MeaslesPatient)
* author 1..1 MS
* author only Reference(MeaslesOrganization)