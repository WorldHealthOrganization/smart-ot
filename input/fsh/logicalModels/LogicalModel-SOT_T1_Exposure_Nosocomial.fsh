Logical: SOTT1ExposureNosocomial
Title: "Surveillance & Outbreak Toolkit T1  Exposure - Nosocomial"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1ExposureNosocomial"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* healthcareAccessed	0..1	code	"Did the patient receive health care (in the last 3 weeks)"	"Did the patient receive health care (in the last 3 weeks)"
* dateOfCareAccess	0..1	date	"Date of health care"	"When did the patient receive health care"
* placeOfCare	0..1	code	"Where did the patient receive health care"	"Where did patient receive health care"
* facilityName	0..1	string	"Name of facility where care was received"	"Name of facility where care was received"
* invasiveCare	0..1	code	"type of care: Invasive care (crossing the skin barrier)"	"Was the type of care: Invasive care (crossing the skin barrier)"
* specifyInvasiveCare	0..1	string	"Specify invasive care"	"Specify invasive care"
* dentalCare	0..1	code	"type of care: Dental care"	"was the type of care: Dental care"
* specifyDentalCare	0..1	string	"Specify dental care"	"Specify dental care"
* deliveryOrAbortion	0..1	code	"type of care: delivery or abortion"	"Was the type of care a delivery or abortion"
* dateOfDeliveryAbortion	0..1	date	"Date of delivery or abortion"	"Date of delivery or abortion"
* admitted	0..1	code	"Type of care: admission in a health care facility"	"Was the type of care an admission in health care facility"
* dateOfAdmission	0..1	date	"Date admitted at health care facility"	"Date admitted at health care facility"
* dateOfDischarge	0..1	date	"Date of exiting health care facility"	"Date of exiting health care facility"
* bloodTransfusion	0..1	code	"type of care: blood transfusion"	"Was the type of care a blood transfusion"
* dateOfTransfusion	0..1	date	"Date of blood transfusion"	"When was this blood transfusion"
* healthFacilityVisit	0..1	code	"Did the patient visit a health facility without getting health care (visit patient or any other reason)"	"Did the patient visit a health facility without getting health care (visit patient or any other reason)"
* dateOfVisit	0..1	date	"Date of visit (without getting health care)"	"Date of visit (without getting health care)"
* healthFacilityName	0..1	string	"Name of health care facility"	"Name of health care facility"
* FacilityAddress	0..1	string	"Address of health care facility"	"Address of health care facility"
* illicitDrugsInjected	0..1	code	"Did the patient use or inject illicit drugs"	"Did the patient use or inject illicit drugs recently"
* specifyIllicitDrugs	0..1	string	"Specify illicit drugs"	"Specify the illicit drugs used"
* syringeContact	0..1	code	"Did the patient come in contact with syringes of needles at his/her workplace"	"Did the patient come in contact with syringes of needles at his/her workplace"
* specifySyringeContact	0..1	string	"Specify this contact with syinges or needles"	"Specify this contact with syinges or needles"
* bloodDonation	0..1	code	"Did the patient donate blood or plasma"	"Did the patient donate blood or plasma"
* noOfDonations	0..1	Quantity	"How many donations of blood or plasma"	"How many donations of blood or plasma"
* healthcareAccessed from $YesNo (required)
* placeOfCare from PlaceOfCare (required)
* invasiveCare from $YesNo (required)
* dentalCare from $YesNo (required)
* deliveryOrAbortion from $YesNo (required)
* healthFacilityVisit from $YesNo (required)
* illicitDrugsInjected from $YesNo (required)
* syringeContact from $YesNo (required)
* bloodDonation from $YesNo (required)