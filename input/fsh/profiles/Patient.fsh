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
* gender 1..1 
* gender ^label = "Sex"
* birthDate 0..1 MS
* birthDate ^label = "Date of birth"
* extension contains Landmark named Landmark 1..1 MS    