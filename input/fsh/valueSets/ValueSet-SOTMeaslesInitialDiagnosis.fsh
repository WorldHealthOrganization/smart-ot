Alias: $InitDiag = http://ritikarawlani.github.io/smart-outbreak-measles/InitDiag

ValueSet:      SOTMeaslesInitialDiagnosis
Id:	           sot-measles-initial-diagnosis
Title:	       "SOT Measles Initial Diagnosis"
Description:   """
"""
* ^status = #draft
* include $InitDiag#1 "Measles"
* include $InitDiag#2 "Rubella"
* include $InitDiag#3 "Dengue"
* include $InitDiag#4 "Other Rash illness"
* include $InitDiag#8 "Other Non-Rash illness"
* include $InitDiag#99 "Unknown"