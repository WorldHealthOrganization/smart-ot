Profile:        MeaslesEncounter
Parent:         Encounter
Id:             MeaslesEncounter
Title:          "Measles Encounter"
Description:    """ 
Abstraction for a Measles Encounter. There should be a Measles Encounter associated 
to each public health authortiy (PHA)
"""

* subject 1..1 MS
* subject only Reference(MeaslesPatient)
//* actualPeriod 1..1 MS