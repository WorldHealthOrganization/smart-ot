Logical: SOTT1Laboratory
Title: "Surveillance & Outbreak Toolkit T1 - Laboratory"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1Laboratory"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* laboratoryId	0..1	string	"Laboratory ID:"	"Laboratory identification assigned to the case."
* labName	0..1	string	"Name of testing laboratory:"	"Name of testing laboratory."
* labLocation	0..1	string	"Location of testing laboratory"	"Location of testing laboratory."
* antibioticReceived	0..1	code	"Did the patient received antibiotic prior to specimen collection?"	"Did the patient received antibiotic prior to specimen collection?"
* labTests 0..* BackboneElement "Details of tests performed" "Details of tests performed"
  * sampleId	0..1	string	"Sample ID"	"First Sample ID"
  * sampleType	0..1	string	"Type of specimen (blood, stool, CSF, skin smear…..)"	"Type of specimen (blood, stool, CSF, skin smear…..)"
  * collectionDate	0..1	date	"Collection date"	"Collection date"
  * testPerformedDate	0..1	date	"Date of test performed"	"Date of test performed"
  * testPerformed	0..1	string	"Test performed"	"Test performed"
  * result	0..1	code	"Result"	"Result"
  * result from Results (required)
* proteinuria	0..1	code	"Proteinuria"	"Record laboratory test results: Proteinuria"
* hematuria	0..1	code	"Hematuria"	"Record laboratory test results: Hematuria"
* haemoglobin	0..1	Quantity	"Haemoglobin (g/l)"	"Record laboratory test results: Haemoglobin (g/l)"
* WBC	0..1	Quantity	"WBC count"	"Record laboratory test results: WBC count"
* platelet	0..1	Quantity	"Platelets"	"Record laboratory test results: Platelets"
* CRP	0..1	Quantity	"CRP:"	"Record laboratory test results: CRP:"
* potassium	0..1	Quantity	"Potassium"	"Record laboratory test results: Potassium"
* ALT	0..1	Quantity	"ALT/SGPT"	"Record laboratory test results: ALT/SGPT"
* AST	0..1	Quantity	"AST/SGOT"	"Record laboratory test results: AST/SGOT"
* lactate	0..1	Quantity	"Lactate"	"Record laboratory test results: Lactate"
* totalBilirubin	0..1	Quantity	"Total bilirubin"	"Record laboratory test results: Total bilirubin"
* creatinine	0..1	Quantity	"Creatinine"	"Record laboratory test results: Creatinine"
* urea	0..1	Quantity	"Urea"	"Record laboratory test results: Urea"
* kinase	0..1	Quantity	"Creatine kinase"	"Record laboratory test results: Creatine kinase"
* otherBloodTest	0..1	Quantity	"Other blood test:"	"Describe additional blood tests and give the results"
* bloodGas	0..1	code	"Blood gasses analysis"	"Record laboratory test results: Blood gasses analysis"
* arterialBloodPH	0..1	string	"Arterial blood PH"	"Record laboratory test results: Arterial blood PH"
* bicarbonates	0..1	string	"Bicarbonates"	"Record laboratory test results: Bicarbonates"
* PO2	0..1	string	"Partial pressure of oxygen"	"Record laboratory test results: Partial pressure of oxygen"
* PCO2	0..1	string	"Partial pressure of carbon dioxide"	"Record laboratory test results: Partial pressure of carbon dioxide"
* O2SAT	0..1	string	"Oxygen saturation"	"Record laboratory test results: Oxygen saturation"
* otherTestsPerformed	0..1	string	"Other tests performed and results (even negative results)"	"Other tests performed and results (even negative results)"
* labConclusion	0..1	string	"Laboratory conclusion"	"Evaluate the laboratory test results and draw a conclusion from these results"
* environmentSampleTaken	0..1	code	"Environmental samples taken"	"Where any environmental samples taken and submitted to a laboratory"
* environmentSampleDetails 0..1 BackboneElement "Details of environment sample" "Details of environment sample"
  * environmentSample	0..1	string	"Products"	"Describe the environmental samples (soil, water, air, etc)"
  * collectionDate	0..1	date	"Date of collection"	"When where these environmental samples taken"
* animalSampleTaken	0..1	code	"Animal samples taken"	"Where any animal samples taken and submitted to the laboratory (blood, oropharyngeal swabs, tissue, brain, feaces, etc)"
* animalSampleDetails 0..1 BackboneElement "Details of animal sample" "Details of animal sample"
  * animalSample	0..1	string	"Products"	"What kind of animal samples were taken (blood, oropharyngeal swabs, tissue, brain, feaces, etc)"
  * collectionDate	0..1	date	"Date of collection"	"When were animal samples taken?"
* antibioticReceived from YesNo (required)
* proteinuria from YesNoUnknown (required)
* hematuria from YesNoUnknown (required)
* bloodGas from YesNo (required)
* environmentSampleTaken from YesNo (required)
* animalSampleTaken from YesNo (required)
