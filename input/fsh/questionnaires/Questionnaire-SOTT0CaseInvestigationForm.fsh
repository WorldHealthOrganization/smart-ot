/*RuleSet: Question(linkId, text, type, repeats)
* item[+].linkId = "{linkId}"
* item[=].text = "{text}"
* item[=].type = #{type}
* item[=].repeats = {repeats}*/


Instance: Questionnaire-SOTT0CaseInvestigationForm
InstanceOf: sdc-questionnaire-extr-smap
Description: "T0 Case Investigation Questionnaire"
Title: "T0 Case Investigation Questionnaire"
Usage: #definition
* title = "T0 Case Investigation Questionnaire"
* description = "T0 Case Investigation Questionnaire"
* name = "Questionnaire-SOTT0CaseInvestigationForm"
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft
* contained[+] = BiologicalSex

//Header
* insert Question(investigationForm,T0 Initial Case Investigation Form,display,false)
  //Demographics
* item[=]
  * insert Question(Demographics, Section 1: Patient Information, display, false)
  * item[=]
    * insert Question(Name, Name, string, false)
    * insert Question(identification,Identification, string,false)
    * insert Question (telephone, Telephone, string, false)
    * insert Question(BirthDate, Birth Date, date, false)
    * insert Question(Sex, Sex at birth,choice,false)
    * item[=].answerValueSet = Canonical(BiologicalSex)
    * insert Question(estimatedAge, Estimated Age in years/months/days, string, false)
    * insert Question(occupation,Occupation,string,false)
    * insert Question(healthServiceName, If working in a health facility\, specify name and locality, string, false)
    * insert Question(address, Residential street address, string, false)
    * insert Question(province, Admin Level 1 - province, string, false)
    * insert Question(district, Admin Level 2 - district, string, false)
    * insert Question(commune, Admin Level 3 - commune, string, false)
    * insert Question(ward, Admin Level 4 - ward \, parish, string, false)
    * insert Question(latitude, GPS residence latitude, string, false)
    * insert Question(longitude, GPS residence longitude, string, false)
  //Clinical Information
  * item[=]
  * insert Question(Clinical, Section 2: Clinical Information, display, false)
    * item[=]
      * insert Question(clinicalCourse, Patient clinical course, group, false)
      * insert Question(symptomOnsetDate,	date of onset of symptoms*:____/____/______	,date, false)
      * insert Question(presentedToHCFDate	,For this episode\, date first presented to health facility:___/___/_____,	date, false)
      * insert Question(admitted,	Currently admitted in health facility ?:,	choice, false)
      * item[=].answerValueSet = $YesNo
      * insert Question(admittedHCFName,	name:,	string, false)
        * item[=]
          * enableWhen
            * question = "admitted"
            * operator = #=
            * answerCoding 
              * system = $YesNo
              * code =  #Yes
      * insert Question(outcome, Outcome of illness*:, choice, false)
      * item[=].answerValueSet = Canonical(PatientOutcome)
      * insert Question(outcomeEvaluatedDate,	date outcome was evaluated:___/___/_____,	date, false)
      * insert Question(outcomeDate,	date* of recovery\, default or death:___/___/_____,	date, false)
      * insert Question(symptoms, Patient symptoms at presentation - check all reported symptoms, group, false)
        * item[=]
        * insert Question(fever,History of fever,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"
        * insert Question(fatigue,Intense fatigue or weakness,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"
        * insert Question(irritability,Irritability/confusion,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"      
        * insert Question(headache,Head pain,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"      
        * insert Question(soreThroat,Sore throat,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"     
        * insert Question(intenseCough,Non-productive cough,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"      
        * insert Question(expectoration,Productive cough - expectoration,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"      
        * insert Question(anorexia,Loss of appetite,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"      
        * insert Question(diarrhoea,Passing rice water-like stool,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"      
        * insert Question(nausea,Nausea/vomiting,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"      
        * insert Question(intensePain,Intense pain,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"      
        * insert Question(musclePain,Muscular pain,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"
          * item[=]
            * enableWhen
              * question = "intensePain"
              * operator = #=
              * answerCoding 
                * system = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"
                * code =  #Yes    
        * insert Question(chestPain,Chest pain,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"      
        * insert Question(abdominalPain,Abdominal pain,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"      
        * insert Question(jointPain,Joint pain,choice,false)
          * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/YesNoUnknown"      
    * insert Question(signs, Patient signs at presention - check all observed signs, group, false)
      * item[=]
      * insert Question(conjunctivitalInjection,Conjunctival injection,choice, false)
      * insert Question(palpableLiver,Palpable liver,choice, false)
      * insert Question(palpableSpleen,Palpable spleen,choice, false)
      * insert Question(jaundice,Jaundice,choice, false)
      * insert Question(lymphadenopathy,Enlarged lymph nodes,choice, false)
      * insert Question(lymphadenopathySite,site -enlarged nymph nodes,string, false)
      * insert Question(oedema,Peripheral oedemas,choice, false)
      * insert Question(seizures,Seizures,choice, false)
      * insert Question(coma,Drowsiness\, coma,choice, false)
      * insert Question(stiffNeck,Neck stiffness,choice, false)
      * insert Question(bleeding,Observed abnormal bleeding,choice, false)
      * insert Question(otherSignsSymptoms,Other signs \, specify,string, false)
      * insert Question(heartrate,Heart rate - beats per min,quantity, false)
      * insert Question(Bp,Blood Pressure - mmHg:,group, false)
      * item[=]
        * insert Question(sysBp,Systolic blood pressure,quantity, false)
        * insert Question(diaBp,Diastolic blood pressure,quantity, false)
      * insert Question(RespiratoryRate,Respiratory rate - per min ,quantity, false)
      * insert Question(O2Sat,O2 saturation room air,quantity, false)
      * insert Question(temperature,Temperature - degrees:,quantity, false)
      * insert Question(crt,Capillary refill time> 3 sec,choice, false)
      * insert Question(muac,MUAC - cm:,quantity, false)
    * insert Question(comorbidity, Underlying conditions and comorbidity - check all that apply, display, false)
      * insert Question(pregnancy,Pregancy,choice, false)
      * insert Question(postPartum,Post-partum - <6 weeks after delivering,choice, false)
      * insert Question(malnutrition,Malnutrition,choice, false)
      * insert Question(immunodeficiency,Immunodeficiency,choice, false)
      * insert Question(acuteChronicDisease,Associated acute or chronic disease\, please specifiy,choice, false)
      * insert Question(specifyAcuteChronicDisease,if yes\, name:,string, false)
      * insert Question(otherConditions,Other conditions impacting health\, specify,string, false)
  //Exposure
  * item[=]
  * insert Question(Exposure, Section 3: Exposure and travel Information 3 WEEKS PRIOR TO FIRST SYMPTOM ONSET, display, false)
  * item[=]
    * insert Question(sickContact,Are you aware of people outside your household with similar illness or symptoms ?,choice, false)
    * insert Question(DateOfOnset,Date of onset,date, false)
    * insert Question(nameAndRelationship,Name and relationship,string, false)
    * insert Question(placeOfInteraction,Place of interaction,string, false)
    * insert Question(massGatheringParticipation,Did the patient participate in mass gathering events,choice, false)
    * insert Question(dateOfEvent,Date of event,date, false)
    * insert Question(eventLocation,Location,string, false)
    * insert Question(gatheringType,Type of gathering and how many people attended,string, false)
    * insert Question(Did you travel* outside your residential area ?,Did you travel* outside your residential area ?,choice, false)
    * insert Question(Date of travel,Date of travel,date, false)
    * insert Question(placeOfTravel,From where to where,string, false)
    * insert Question(traditionalTreatment,Traditional treatment received,choice, false)
    * insert Question(specifyTraditionalTreatment,Specify traditional treatment,string, false)
    * insert Question(animalContact,Were you in close proximity to any animals in the XX week/months prior to symptom onset?,choice, false)
    * insert Question(Any other information regarding animal health events near the patient,Any other information regarding animal health events near the patient,string, false)
    * insert Question(specifyInsectExposure,Specify the insect and exposure,string, false)
    * insert Question(foodDiseaseSuspected,Does the patient suspect a specific food or the beverage to be the cause of the disease,choice, false)
    * insert Question(explainSuspicion,Explain why this suspicion,string, false)
  //Laboratory Information
  * item[=]
  * insert Question(Laboratory, Section 4: Laboratory Information, display, false)
  * item[=]
    * insert Question(labName,Name of testing laboratory:,string, false)
    * insert Question(labLocation,Location of testing laboratory,string, false)
    * insert Question(antibioticReceived,Did the patient received antibiotic prior to specimen collection?,choice, false)
    * insert Question(labtest, Lab test details, group, true)
    * item [=]  
      * insert Question(sampleId,Sample ID,string, false)
      * insert Question(collectionDate,Collection date,date, false)
      * insert Question(testPerformed,Test performed,string, false)
      * insert Question(result,Result,quantity, false)
    * insert Question(proteinuria,Proteinuria,quantity, false)
    * insert Question(hematuria,Hematuria,quantity, false)
    * insert Question(haemoglobin,Haemoglobin -g/l,quantity, false)
    * insert Question(WBC,WBC count,quantity, false)
    * insert Question(platelet,Platelets,quantity, false)
    * insert Question(CRP,CRP:,quantity, false)
    * insert Question(potassium,Potassium,quantity, false)
    * insert Question(ALT,ALT/SGPT,quantity, false)
    * insert Question(AST,AST/SGOT,quantity, false)
    * insert Question(lactate,Lactate,quantity, false)
    * insert Question(totalBilirubin,Total bilirubin,quantity, false)
    * insert Question(creatinine,Creatinine,quantity, false)
    * insert Question(urea,Urea,quantity, false)
    * insert Question(kinase,Creatine kinase,quantity, false)
    * insert Question(otherBloodTest,Other blood test:,string, false)