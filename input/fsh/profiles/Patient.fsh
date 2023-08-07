Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace

Profile:      MeaslesPatient
Parent:       Patient
Id:           MeaslesPatient
Title:        "Measles Patient"
Description:	"""
Measles Patient
"""
* identifier 1..1 MS
* identifier.system MS
* identifier.value MS
* name 1..1 MS
* gender 1..1 MS
* gender ^label = "Sex"
* gender from BiologicalSex (required)
* birthDate 0..1 MS
* birthDate ^label = "Date of birth"
* address 1..1 MS
* address ^label = "Place Of Residence"
* telecom 1..1 MS
* telecom ^label = "Telephone"
* extension contains 
    Landmark named Landmark 1..1 MS and
    $patient-birthPlace named CountryOfBirth 1..1 MS and 
    Guardian named Guardian 1..1 MS and
    Occupation named Occupation 1..1 MS and
 //   LocalityType named LocalityType 1..1 MS and
    WorkAddress named WorkAddress 1..1 MS 