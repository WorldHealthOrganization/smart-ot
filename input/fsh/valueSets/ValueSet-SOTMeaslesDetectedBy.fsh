Alias: $DetectedBy = http://ritikarawlani.github.io/smart-outbreak-measles/DetectedBy

ValueSet:      SOTMeaslesDetectedBy
Id:	           sot-measles-detected-by
Title:	       "SOT Measles Detected By"
Description:   """
"""
* ^status = #draft
* include $DetectedBy#1 "Spontaneous Consultation"
* include $DetectedBy#2 "Laboratory"
* include $DetectedBy#3 "Institutional Search"
* include $DetectedBy#4 "Community Case Search"
* include $DetectedBy#5 "Contact Investigation"
* include $DetectedBy#6 "Community Report"
* include $DetectedBy#88 "Other"
* include $DetectedBy#99 "Unknown"