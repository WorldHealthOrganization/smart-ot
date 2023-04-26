Alias: $LocType = http://ritikarawlani.github.io/smart-outbreak-measles/LocType

ValueSet:      SOTMeaslesLocalityType
Id:	           sot-measles-locality-type
Title:	       "SOT Measles Locality Type"
Description:   """
"""
* ^status = #draft
* include $LocType#1 "Urban"
* include $LocType#2 "Periurban"
* include $LocType#3 "Rural"