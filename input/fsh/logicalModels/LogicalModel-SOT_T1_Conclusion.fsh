Logical: SOTT1Conclusion
Title: "Surveillance & Outbreak Toolkit T1  Conclusion"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTT1Conclusion"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* agentSuspected 0..1	string	"Agent or disease suspected"	"Conclusions: infectious agent or disease suspected"
* cofactors	0..1 string	"Possible co-factors"	"Conclusions: List differential diagnosis and possible co-factors"
* evidence	0..1 string	"Evidence for"	"Describe evidence for your conclusion"
* rank	0..1 Quantity	"Rank of certainty (over/10)"	"Rank of certainty (over/10)"
* action	0..1 string	"Confirmatory action to be taken"	"Confirmatory action to be taken to confirm suspect"