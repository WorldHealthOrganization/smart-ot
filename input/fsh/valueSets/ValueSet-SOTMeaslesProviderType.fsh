Alias: $ProvType = http://ritikarawlani.github.io/smart-outbreak-measles/ProvType

ValueSet:      SOTMeaslesProviderType
Id:	           sot-measles-provider-type
Title:	       "SOT Measles Provider Type"
Description:   """
"""
* ^status = #draft
* include $ProvType#1 "Public"
* include $ProvType#2 "Private"
* include $ProvType#88 "Other"