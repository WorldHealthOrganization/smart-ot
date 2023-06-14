Logical: SOTT1ClinicalRespiratory
Title: "Surveillance & Outbreak Toolkit T1 Clinical - Respiratory"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1ClinicalRespiratory"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* RespiratoryRate	0..1	Quantity	"Respiratory rate (per min)"	"Number of breaths during one minute"
* O2Sat	0..1	Quantity	"O2 saturation room air"	"in proportion"
* respiratorySigns	0..1	code	"Observed respiratory signs"	"If yes describe"
* respiratorySigns from YesNo (required)
* intenseCough	0..1	code	"Non-productive cough"	"[Intense] coughing, including dry ."
* intenseCough from YesNoUnknown (required)
* expectoration	0..1	code	"Productive cough (expectoration)"	"When coughing the patient produces phlegm or mucus/sputum or bloody sputum"
* expectoration from YesNoUnknown (required)
* shortBreath	0..1	code	"Shortness of breath"	"Difficulty breathing (dyspnoea), abnormal shortness of breath or intense tightening of the chest while resting or during light physical activity (e.g. normal walking), noisy respiration"
* shortBreath from YesNoUnknown (required)
* respiratoryDistress	0..1	code	"Respiratory distress"	"Include following signs: increased breath rate, lower chest wall indrawing, throacic retraction, flapping of the wings of the nose"
* respiratoryDistress from YesNoUnknown (required)
* cyanosis	0..1	code	"Cyanosis"	"Blue coloration of nail, of lips"
* cyanosis from YesNoUnknown (required)
* auscultation	0..1	code	"Abnormal auscultation"	"Result of stethoscop auscultation of the lungs, (precise if murur or other/localised or global signs)"
* auscultation from YesNoUnknown (required)
* pneumonia	0..1	code	"pneumonia"	"signs evocating pneumonia of viral or bacterial origin"
* pneumonia from YesNoUnknown (required)
* pneumothorax	0..1	code	"pneumothorax"	"Colapsed lungs on auscultation"
* pneumothorax from YesNoUnknown (required)
* otherRespSigns	0..1	string	"Other respiratory signs:"	"Describe respiratory signs not reported above"