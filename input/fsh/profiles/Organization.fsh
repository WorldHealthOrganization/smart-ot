Profile:        MeaslesOrganization
Parent:         Organization
Id:             MeaslesOrganization
Title:          "Measles Organization"
Description:    """ 
Abstraction for a Measles Organization. There should be a Measles Organization associated 
to each public health authortiy (PHA)
"""
* name 1..1 MS
* contact 1..1 MS
* extension contains ProviderType named ProviderType 1..1 MS