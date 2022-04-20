*** Settings ***
Library    SeleniumLibrary    
Resource    ../Keywords/ToolsQA_Keywords.robot


*** Test Cases ***

TestCase_01
    [Setup]    Fectch data from excel sheet
    Open Browser and Navigate to Tools QA
    Fill Student registartion form
    