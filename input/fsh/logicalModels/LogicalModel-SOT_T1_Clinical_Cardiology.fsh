Alias: $YesNo = http://terminology.hl7.org/ValueSet/v2-0136
Logical: SOTT1ClinicalCardiology
Title: "Surveillance & Outbreak Toolkit T1 Clinical - Cardiology"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1ClinicalCardiology"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* heartrate	0..1	Quantity	"Heart rate (beats per min)"	"beats per minute"
* crt	0..1	code	"Capillary refill time> 3 sec"	"Capillary refill time (CRT) is defined as the time taken for color to return to an external capillary bed after pressure is applied to cause blanching"
* crt from YesNoUnknown (required)
* sysBp	0..1	Quantity	"Systolic blood pressure"	"in mm Hg"
* diaBp	0..1	Quantity	"Diastolic blood pressure"	"in mm Hg"
* cardiacDisorders	0..1	code	"Observed cardiac disorders"	"Presence of accelerated pulse, weak pulse, difficulty breathing when performing low llevel effort, chest pain, thoracic oppression, peripheral oedema, low blood pressure, delay capillary refill"
* cardiacDisorders from $YesNo (required)
* weakPulse	0..1	code	"Weak pulse"	"Difficult perception of peripheral pulse"
* weakPulse from YesNoUnknown (required)
* cardiacFailure	0..1	code	"Signs of cardiac failure"	"Include signs: pulmonary oedemas, low peripheral blood pressure, oedema, delayed capillary refill,"
* cardiacFailure from YesNoUnknown (required)
* cardiacAuscultation	0..1	code	"Abnormal cardiac auscultation (murmur, irregular heartbeat, gallop,…)"	"Abnormal cardiac auscultation (murmur, irregular heartbeat, gallop,…)"
* cardiacAuscultation from YesNoUnknown (required)
* oedema	0..1	code	"Peripheral oedemas"	"Oedema at the extremities (lower legs, hands)"
* oedema from YesNoUnknown (required)
* otherCardiacSigns	0..1	string	"Other cardiac signs"	"Describe other cardiac signs"
