Logical: SOTT1ClinicalGastroIntestinal
Title: "Surveillance & Outbreak Toolkit T1 Clinical - Gastro-intestinal"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1ClinicalGastroIntestinal"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* nausea	0..1	code	"Nausea/vomiting"	"Include nausea, vomiting, abdominal pain, loss of appetite, diarrhea, dysentery, increased liver and/or spleen volume, anorexia."
* nausea from $YesNo (required)
* anorexia	0..1	code	"Loss of appetite"	"Loss of appetite (anorexia), loss of desire to eat."
* anorexia from $YesNo (required)
* gastroIntestinalDisorders	0..1	code	"Observed gastro intestinal disorders"	"Is or was the case nauseas or is or was the case vomiting?"
* gastroIntestinalDisorders from $YesNo (required)
* abdominalPain	0..1	code	"Stomach or abdominal pain"	"Painful abdomen (currently or on palpation)"
* abdominalPain from $YesNo (required)
* hiccoughs	0..1	code	"Hiccoughs"	"Hiccoughs, hicups, repeated involuntary spasm/contraction of the diaphragm accompanied by closure of the glottis which may produce the characteristic sound. (Aspecific sign, risk for confusion)"
* hiccoughs from YesNoUnknown (required)
* tenderAbdomen	0..1	code	"Tender abdomen"	"Slightly painful abdomen on palpation"
* tenderAbdomen from $YesNo (required)
* palpableSpleen	0..1	code	"Palpable spleen"	"Splenomegaly"
* palpableSpleen from $YesNo (required)
* abdominalMass	0..1	code	"Abdominal mass"	"Any abnormal abdominal mass at palpation"
* abdominalMass from YesNoUnknown (required)
* palpableLiver	0..1	code	"Palpable liver"	"Enlarged liver"
* palpableLiver from $YesNo (required)
* bloodyDiarrhoea	0..1	code	"Bloody diarrhoea (dysentery):"	"Bloody diarrhoea (dysentery), any diarrhoeal episode in which the loose or watery stools contain visible red blood."
* bloodyDiarrhoea from YesNoUnknown (required)
* diarrhoea	0..1	code	"Passing rice water-like stool"	"Diarrhoea typically colored without containing visible red blood."
* diarrhoea from YesNoUnknown (required)
* paleStool	0..1	code	"Pale stools"	"Stools are not colored as usual"
* paleStool from YesNoUnknown (required)
* jaundice	0..1	code	"Jaundice"	"scleral icterus or skin icterus"
* jaundice from $YesNo (required)
