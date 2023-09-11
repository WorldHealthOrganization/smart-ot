Logical: SOTMeaslesClassification
Title: "Surveillance & Outbreak Toolkit Measles- Classification"
Parent: BackboneElement

* ^url = "http://worldhealthorganization.github.io/smart-ot/StructureDefinition/SOTMeaslesClassification"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* FinalClassification 1..1 code "Final Case Classification" "Final Case Classification"
* Source 1..1 code "Source" "For confirmed cases, Source of infection"
* ConfirmationBasis 0..1 code "Basis for confirmation" "Basis for confirmation"
* FinalClassification from FinalClassification (required)
* Source from SourceOfInfection (required)
* ConfirmationBasis from ConfirmationBasis (required)
* CountryImportation 0..1 string "Country of importation" "If Imported or Import-related, Country of importation"
* DiscardingBasis 0..1 code "Basis for discarding" "Basis for discarding"
* DiscardingBasis from DiscardingBasis (required)
* Contact 0..1 code "Contact of another case?" "Contact of another case?"
* Contact from YesNoUnknown (required) 
* ContactCaseNo 0..1 string  "Contact of (or epidemiologically-linked to) case number" "Contact of (or epidemiologically-linked to) case number"
* ClassifiedBy 1..1 string  "Classified by" "Classified by"
* ClassificationDate 1..1 date  "Date of final classification" "Date of final classification"