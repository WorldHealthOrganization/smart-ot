Instance: Questionnaire-SOTGenericRespiratoryDiseaseCIF
InstanceOf: sdc-questionnaire-extr-smap
Description: "Generic Respiratory Disease Case Investigation Form"
Title: "Generic Respiratory Disease Case Investigation Form"
Usage: #definition
* title = "Generic Respiratory Disease Case Investigation Form"
* description = "Generic Respiratory Disease Case Investigation Form"
* name = "Questionnaire-SOTGenericRespiratoryDiseaseCIF"
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft
* contained[+] = BiologicalSex
* contained[+] = YesNoUnknown
* contained[+] = CaseStatus
* contained[+] = PatientOutcome
* contained[+] = ExposureLocation
* contained[+] = ContactType
* contained[+] = AnimalContactLocation
* contained[+] = AnimalExposureLocation

//Header
* insert Question(investigationForm,Generic Respiratory Disease Case Investigation Form,display,false)
  //Essential Basic Information
* item[=]
  * insert Question(basicInformation, Section 1: Essential basic Information, display, false)
  * item[=]
    * insert Question(dataCollectorInformation, A. Data collector Information, group, false)
    * item[=]
      * insert Question(nameOfDataCollector, Name of data collector, string, false)
      * insert Question(dataCollectorTelephoneNumber, Data collector telephone number, string, false)
      * insert Question(dataCollectorInstitution, Data collector institution,string, false)
      * insert Question(formCompletionDate, Form completion date (dd/mm/yyyy\),date, false)
    * insert Question(respondentInformation, B. Interview respondent Information (if not patient\), group, false)
    * item[=]
      * insert Question (nameOfRespondent, Name of respondent, string, false)
      * insert Question (respondentTelephoneNumber, Respondent telephone number, string, false)
      * insert Question (respondentAddress, Respondent address, string, false)
      * insert Question (relationshipToPatient, Relationship to patient, string, false)  
    * insert Question(signs, C. Patient identifier Information, group, false)
    * item[=]
      * insert Question(identification,Unique Case ID/cluster number (if applicable\), string,false)
      * insert Question(caseStatus, Case Status, choice, false)
      * item[=].answerValueSet = Canonical(CaseStatus)
      * insert Question(Name, Name, string, false)
      * insert Question(country, Country of residence, string, false)
      * insert Question(Sex, Sex at birth,choice,false)
      * item[=].answerValueSet = Canonical(BiologicalSex)
      * insert Question(BirthDate,Date of birth (dd/mm/yyyy\), date, false)
      * insert Question(Age, Age (years\,months\), string, false)
      * insert Question(address, Address (village/town\, district\, province/region\), string, false)
      * insert Question(telephone,Patient telephone number, string, false)
  //Clinical Information
  * item[=]
  * insert Question(Clinical, Section 2: Clinical Information, display, false)
  * item[=]
    * insert Question(clinicalCourse, D. Patient clinical course, group, false)
    * item[=]
      * insert Question (symptoms, Symptom, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question(symptomOnsetDate,	date of onset of symptoms:____/____/______	,date, false)
      * item[=]
        * enableWhen
          * question = "symptoms"
          * operator = #=
          * answerCoding 
            * system = Canonical(YesNoUnknown)
            * code =  #Yes      
      * insert Question(presentedToHCF,Health facility visit (including traditional care\),	choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question(presentedToHCFDate,Date of first health facility visit (including traditional care\),	date, false)
      * item[=]
        * enableWhen
          * question = "presentedToHCF"
          * operator = #=
          * answerCoding 
            * system = Canonical(YesNoUnknown)
            * code =  #Yes
      * insert Question(totalHealthFacilitiesVisited, Total health facilities visited till outcome, integer, false)
      * insert Question(dateOfFirstHospitalization, Date of first hospitalization, date, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question(dateOfICUAdmission, Date of intensive care unit admission, date, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question(startICU, Start: ICU, date, false)
      * insert Question(stopICU, Stop: ICU, date, false)
      * insert Question(dateOfMechanicalVentilation, Date of mechanical ventilation, date, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question(startVentilation, Start: Mechanical Ventilation, date, false)
      * insert Question(stopVentilation, Stop: Mechanical Ventilation, date,false)
      * insert Question(dateOfAntiviralTreatment, Antiviral Treatment, date, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question(startVentilation, Start: Antiviral Treatment, date, false)
      * insert Question(stopVentilation, Stop: Antiviral Treatment, date,false)     
      * insert Question(outcome, Outcome, choice, false)
      * item[=].answerValueSet = Canonical(PatientOutcome)
      * insert Question(outcomeDate,	Outcome date,	date, false)
    * insert Question(symptoms,E. Patient symptoms (from disease onset\) and complications, group, false)
    * item[=]
      * insert Question (fever, Fever (>=38 °C\) or history of fever, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (chills, Chills, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (cough, Cough, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (soreThroat, Sore throat, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (runnyNose, Runny nose, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (vomiting, Vomiting, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (diarrhoea, Diarrhoea, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (headache, Headache, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (neurologicalSigns, Neurological signs, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (specifyNeurologicalSigns, Specify, string, false)
      * item[=]
        * enableWhen
          * question = "neurologicalSigns"
          * operator = #=
          * answerCoding 
            * system = Canonical(YesNoUnknown)
            * code =  #Yes
      * insert Question (rash, Rash, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (conjunctivitis, Conjunctivitis, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (shortnessOfBreath, Shortness of breath, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (muscleAches, Muscle aches, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (pneumoniaByChestXRay, Pneumonia by chest X-ray, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (pneumoniaDateStarted, Date Started __/__/____, date, false)
      * item[=]
        * enableWhen
          * question = "pneumoniaByChestXRay"
          * operator = #=
          * answerCoding 
            * system = Canonical(YesNoUnknown)
            * code =  #Yes
      * insert Question (acuteRespiratoryDistressSyndrome, Acute respiratory distress syndrome, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (aRDSDateStarted, Date Started __/__/____, date, false)
      * item[=]
        * enableWhen
          * question = "acuteRespiratoryDistressSyndrome"
          * operator = #=
          * answerCoding 
            * system = Canonical(YesNoUnknown)
            * code =  #Yes
      * insert Question (acuteRenalFailure, Acute renal failure, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (acuteRenalFailureDateStarted, Date Started __/__/____, date, false)
      * item[=]
        * enableWhen
          * question = "acuteRenalFailure"
          * operator = #=
          * answerCoding 
            * system = Canonical(YesNoUnknown)
            * code =  #Yes
      * insert Question (cardiacFailure, Cardiac failure, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (cardiacFailureDateStarted, Date Started __/__/____, date, false)
      * item[=]
        * enableWhen
          * question = "cardiacFailure"
          * operator = #=
          * answerCoding 
            * system = Canonical(YesNoUnknown)
            * code =  #Yes
      * insert Question (consumptiveCoagulopathy, Consumptive coagulopathy, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)

      * insert Question (otherSymptoms, Other symptoms (if yes\, specify\),choice,false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (otherSymptomsSpecify, Specify, string, false)
      * item[=]
        * enableWhen
          * question = "otherSymptoms"
          * operator = #=
          * answerCoding 
            * system = Canonical(YesNoUnknown)
            * code =  #Yes
    * insert Question(comorbidity, F. Patient pre-existing condition, display, false)
    * item[=]
      * insert Question (cancer, Cancer, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (diabetes, Diabetes, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (hivImmuneDeficiency, HIV/other immune deficiency, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (heartDisease, Heart disease, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (asthma, Asthma, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (chronicLungDisease, Chronic lung disease (non-asthma\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (chronicLiverDisease, Chronic liver disease, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (chronicHaematologicalDisorder, Chronic haematological disorder, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (pregnancy, Pregnancy, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (trimester, If yes\, specify trimester, string, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (chronicKidneyDisease, Chronic kidney disease, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (chronicNeurologicalImpairment, Chronic neurological impairment, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (obesity, Obesity, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (otherConditions, Other (if yes\, specify\), string, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (influenzaVaccination, Patient was vaccinated for influenza in the past 12 months, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
  //Exposure and Travel History
  * insert Question(Exposure, Section 3: Exposure and travel history, display, false)
  * item[=]
    * insert Question(comorbidity, G. Patient occupational exposures, display, false)
    * item[=]
      * insert Question (occupation, Occupation (specify location/facility\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (healthcareWorker, Health-care worker (if yes\, specify type/location\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (laboratoryWorker, Laboratory worker (if yes\, specify type/location\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (veterinaryWorker, Veterinary worker (if yes\, specify animal types handled in the 10 days before illness\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (wildlifeWorker, Wildlife worker (if yes\, specify animal types handled in the 10 days before illness\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (liveAnimalMarketWorker, Live animal market worker (if yes\, specify animal types handled in the 10 days before illness\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)      
      * insert Question (farmWorker, Farm worker (if yes\, specify animal types handled in the 10 days before illness\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Question (humanExposure, H. Patient human exposures in the 14 days before illness onset, display, false)
    * item[=]
      * insert Question (visitedOutpatientFacility, Patient visited outpatient treatment facility (if yes\, specify\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (visitedTraditionalHealer, Patient visited traditional healer (if yes\, specify\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (visitedInpatientFacility, Patient visited or was admitted to inpatient health facility (if yes\, specify\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (attendedMassGathering, Patient attended festival or mass gathering (if yes\, specify\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (exposedToSimilarIllness, Patient exposed to person with similar illness, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (typeOfContact, Type of contact, choice, false)
      * item[=].answerValueSet = Canonical(ContactType)
      * insert Question (locationOfExposure, Location of exposure, choice, false)
      * item[=].answerValueSet = Canonical(ExposureLocation)
      * insert Question (uniqueCaseId, Unique case ID of sick person (if available\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (relationshipToPatient, Relationship to current patient (specify\, e.g. family\, friend\, health-care worker\, colleague\), string, false)
      * insert Question (bloodLinked, Blood linked (if yes\, specify link\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (confirmedProbableCase, Sick person confirmed or deemed a probable case in current event, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Question (travelExposure, I. Patient travel history in the 14 days before illness onset (add sheets if multiple locations visited\), display, false)
    * item[=]
      * insert Question (travelledOutside , Patient travelled out of first administrative region, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (travelDetails, specify location (city or region\, country\), group, true)
      * item[=]
        * insert Question(destination, Destination, string, false)
        * insert Question (transportType, model of Travel, string, false)
        * insert Question (arrivalDate, Arrival: __/__/__, date, false)
        * insert Question (departureDate, Departure: __/__/__, date, false)
      * insert Question (companion, Patient travelled with companions (if yes\, specify\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)        
    * insert Question (animalExposure, J. Patient animal exposures in the 14 days before illness onset, display, false)
    * item[=] 
      * insert Question (patientHandledAnimals, Patient handled animals, choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (typesOfAnimalsHandled, Types of animals handled (e.g. pigs\, chicken\, ducks or others\), string, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (natureOfContact, Nature of contact (e.g. feed\, groom or slaughter\), string, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (locationOfAnimalContact, Location of animal contact, string, false)
      * item[=].answerValueSet = Canonical(AnimalContactLocation)
      * insert Question (animalsSickOrDead, Within 2 weeks before or after contact\, any animals sick or dead? (if yes\, specify type and number\, and proportion from flock or herd\), string, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (animalsInEnvironment, Patient exposed to animals in environment but did not handle them (e.g. in neighbourhood\, farm\, zoo\, at home\, agricultural fair or work\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (typesOfAnimalsInEnvironment, Types of animals in that environment (e.g. pigs\, chicken\, ducks or others\), string, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (locationOfExposureToAnimals, Location of exposure, string, false)
      * item[=].answerValueSet = Canonical(AnimalExposureLocation)
      * insert Question (animalsInEnvironmentSickOrDead, Within 2 weeks before or after exposure to animals in the environment\, any animals sick or dead? (if yes\, specify type and number\, and proportion from flock or herd\), string, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (animalByProductsExposure, Patient exposed to animal by-products (e.g. bird feathers\) or animal excreta (if yes\, specify product\), string, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (visitedLiveAnimalMarket, Patient visited live animal market (if yes\, specify market\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)     
      * insert Question (foodExposure, K. Patient food exposures in the 14 days before illness onset, display, false)
    * item[=]
      * insert Question (rawConsumption, Patient consumed raw or unpasteurized animal products (if yes\, specify products\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
      * insert Question (rawRemedyConsumption, Patient consumed health or traditional remedies with raw or unpasteurized animal products (if yes\, specify products\), choice, false)
      * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Question (perceivedExposure, L. Patient perceived exposure, display, false)
    * item[=]
      * insert Question (source, From the point of view of the patient or family\, what is the likely source of infection and geographic location of exposure?, string, false)              
    //Laboratory Information
  * item[=]
  * insert Question(Laboratory, Section 4: Laboratory Information, display, false)
  * item[=]
    * insert Question (specimensCollected, Specimens collected from patient (tick as needed\), choice, false)
    * item[=].answerValueSet = Canonical(SpecimenCollected)
    * insert Question (pathogenTestingDone, Pathogen testing done (tick as needed\), choice, false)
    * item[=].answerValueSet = Canonical(PathogenTested)    
    * insert Question (specimensShipped, Specimens shipped to international reference laboratories, choice, false)
    * item[=].answerValueSet = Canonical(YesNoUnknown)
    * insert Question (shipmentDate, shipment date:, date, false)
    * insert Question (specifySpecimensPositive, Specify specimen(s\) positive, string, false)
    * insert Question (specifyPathogensPositive, Specify pathogen(s\) positive, string, false)
    * insert Question (specifyTargetsPositive, Specify targets positive (e.g. for MERS-CoV\), string, false)
    * insert Question (specifySubtypePositive, Specify subtype positive (e.g. for influenza\), string, false)
    * insert Question (specifyTitres, Specify titres (e.g. paired serum for influenza\), string, false)