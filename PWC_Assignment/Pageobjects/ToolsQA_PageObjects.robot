
*** Settings ***
Library    SeleniumLibrary    
Library    AutoItLibrary    


***Variables***

${firstname}    //input[@id="firstName"]
${lastname}    //input[@id="lastName"]
${email}       //input[@id="userEmail"]
${gender}      gender
${mobile_number}    //input[@id="userNumber"]
${date}        //input[@id="dateOfBirthInput"]
${Subject}    //div[@id="subjectsContainer"]
${Hobbies_checkbox1}    //input[@id="hobbies-checkbox-1"]
${Hobbies_checkbox2}    //input[@id="hobbies-checkbox-2"]
${Hobbies_checkbox3}    //input[@id="hobbies-checkbox-3"]
${choose_file}    //input[@id="uploadPicture"]
${current_Address}    //input[@id="currentAddress"]
${state}        //div[@id="state"]
${city}        //div[@id="city"]
${submit_button}    //button[@id="submit"]


*** Keywords ***
Enter first name
    [Documentation]    This keyword will enter first name in UI
    [Arguments]    ${arg}
    Input Text    ${firstname}    ${arg} 
    
Enter last name 
    [Documentation]    This keyword will enter last name in UI
    [Arguments]    ${arg}
    Input Text    ${lastname}    ${arg} 

Enter email id
    [Documentation]    This keyword will enter email id in UI
    [Arguments]    ${arg}
    Input Text    ${email}    ${arg} 
    
Select gender
    [Documentation]    This keyword will select gender in UI
    [Arguments]    ${arg}   
   
    # Select Radio Button    ${gender}    Male
    Execute Javascript    document.getElementById("gender-radio-1").click();  
    
Enter mobile number
    [Documentation]    This keyword will enter mobile number in UI
    [Arguments]    ${arg}
    Input Text    ${mobile_number}    ${arg}
    
Enter date fo birth
    [Documentation]    This keyword will enter date of birth in UI
    [Arguments]    ${arg}
  
    Clear Element Text    ${date} 
    Input Text    ${date}    ${arg}
    Press Keys    None     ENTER        
    
Enter subject
    [Documentation]    This keyword will enter subject in UI
    [Arguments]    ${arg}
    
   
    Scroll Element Into View    ${Subject} 
    Input Text    ${Subject}    ${arg}
    sleep     4s
 
    
Select hobbies
    [Documentation]    This keyword will enter subject in UI
    [Arguments]    ${arg}
    Select Checkbox    ${Hobbies_checkbox1}
    

Select file
    
    [Documentation]    This keyword will upload the file in UI
    [Arguments]    ${arg}
    Click Element    ${choose_file}
    Send    ${arg}
    
Enter current address
    [Documentation]    This keyword will enter the current address in UI
    [Arguments]    ${arg}
    Input Text    ${current_Address}     ${arg}
    
Select state
    
    [Documentation]    This keyword will select state in UI
    [Arguments]    ${arg}
    Click Element    ${state}    
    
Select City
       
    [Documentation]    This keyword will select city in UI
    [Arguments]    ${arg}
    Click Element    ${city}  
    
Click on submit
        [Documentation]    This keyword will click on submit button in the UI
    Press Keys    None    TAB
    Press Keys    None    ENTER
  