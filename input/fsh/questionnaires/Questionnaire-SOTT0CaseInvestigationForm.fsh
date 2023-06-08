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
    * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/BiologicalSex"
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
      * insert Question(outcome,	Outcome of illness*:,	choice, false)
        * item[=].answerValueSet = "http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/PatientOutcome"
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
      * insert Question(conditions, Underlying conditions and comorbidity - check all that apply, group, false)
      * insert Question(patientSigns, Patient signs at presentation - check all observed signs, display, false)
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
      * insert Question(heartrate,Heart rate - beats per min,Quantity, false)
      * insert Question(Bp,Blood Pressure - mmHg:,display, false)
      * insert Question(sysBp,Systolic blood pressure,Quantity, false)
      * insert Question(diaBp,Diastolic blood pressure,Quantity, false)
      * insert Question(RespiratoryRate,Respiratory rate - per min ,Quantity, false)
      * insert Question(O2Sat,O2 saturation room air,Quantity, false)
      * insert Question(temperature,Temperature - degrees:,Quantity, false)
      * insert Question(crt,Capillary refill time> 3 sec,choice, false)
      * insert Question(muac,MUAC - cm:,Quantity, false)
    * insert Question(comorbidity, Underlying conditions and comorbidity - check all that apply, display, false)
  //Exposure
  * item[=]
  * insert Question(Exposure, Section 3: Exposure and travel Information 3 WEEKS PRIOR TO FIRST SYMPTOM ONSET, display, false)

  //Laboratory Information
  * item[=]
  * insert Question(Laboratory, Section 4: Laboratory Information, display, false)