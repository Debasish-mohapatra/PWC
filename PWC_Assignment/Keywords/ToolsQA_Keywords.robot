*** Settings ***
Library    SeleniumLibrary   
Library    ExcelRobot     
Resource    ../Pageobjects/ToolsQA_PageObjects.robot

***Variables***
${fname}    ''
${lname}    ''
${mail}    ''
${gen}    ''
${mnumber}    ''
${dob}    ''
${sub}    ''
${hob}    ''
${fpath}    ''
${address}    ''
${st}    ''
${ct}    ''
*** Keywords ***
Fectch data from excel sheet
    ExcelRobot.Open Excel    PWC_ParameterSheet.xls
    
     
     ${fiestname}   ExcelRobot.Read Cell Data    Sheet1    0    1 
      Set Global Variable    ${fname}    ${fiestname}  
    ${lastname}     ExcelRobot.Read Cell Data    Sheet1    1    1
     Set Global Variable    ${lname}    ${lastname} 
    ${email}     ExcelRobot.Read Cell Data    Sheet1    2    1
     Set Global Variable    ${mail}    ${email}
    ${gender}     ExcelRobot.Read Cell Data    Sheet1    3    1
     Set Global Variable    ${gen}    ${gender}
    ${mobile_number}     ExcelRobot.Read Cell Data    Sheet1    4    1
    ${mobile_number}=  Convert To String    ${mobile_number}
     Set Global Variable    ${mnumber}    ${mobile_number}
    
    ${date}     ExcelRobot.Read Cell Data    Sheet1    5    1
     Set Global Variable    ${dob}    ${date}
    ${subject}     ExcelRobot.Read Cell Data    Sheet1    6    1
     Set Global Variable    ${sub}    ${subject}
    ${Hobbies}     ExcelRobot.Read Cell Data    Sheet1    7    1
     Set Global Variable    ${hob}    ${Hobbies}
    ${filepath}     ExcelRobot.Read Cell Data    Sheet1    8    1
     Set Global Variable    ${fpath}    ${filepath}
    ${current_Address}    ExcelRobot.Read Cell Data    Sheet1    9    1
     Set Global Variable    ${address}    ${current_Address}
     ${state}    ExcelRobot.Read Cell Data    Sheet1    10    1
      Set Global Variable    ${st}    ${state}
      ${city}    ExcelRobot.Read Cell Data    Sheet1    11    1
       Set Global Variable    ${ct}    ${city}
      

Open Browser and Navigate to Tools QA
    Open Browser    https://demoqa.com/automation-practice-form    chrome
    Maximize Browser Window
    

Fill Student registartion form
    
    ToolsQA_PageObjects.Enter first name    ${fname}
    ToolsQA_PageObjects.Enter last name    ${lname}
    ToolsQA_PageObjects.Enter email id    ${mail}
    ToolsQA_PageObjects.Select gender    ${gen}
    ToolsQA_PageObjects.Enter mobile number    ${mnumber}
    ToolsQA_PageObjects.Enter date fo birth    ${dob}
    ToolsQA_PageObjects.Enter subject    ${sub}
     ToolsQA_PageObjects.Select hobbies    ${hob}
    ToolsQA_PageObjects.Select file    ${fpath}
    ToolsQA_PageObjects.Enter current address    ${address}
    ToolsQA_PageObjects.Select City    ${City}
    ToolsQA_PageObjects.Select state    ${state}
    ToolsQA_PageObjects.Click on submit 
    
    