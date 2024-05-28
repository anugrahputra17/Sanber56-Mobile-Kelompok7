*** Settings ***
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Resource            ../PageObjects/BookingPage/bookingPage.robot
Test Setup          Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_USERNAME}          support@ngendigital.commmm
${IVALID_PASSWORD}           abc1233333


*** Test Cases ***
User Should Be Able To Book With Valid Data
    [Tags]       TC-001    positif
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login
    Click book Button On dashboard Screen
    Wait Until Element Is Visible    ${locator_from}    
    Select Spinner from city Value    ${locator_from}    ${SPINNER_from}
    Select Spinner to city Value    ${locator_to}    ${SPINNER_to}
    Select Spinner class Value    ${locator_class}    ${SPINNER_class}
    Fill Start Date    
    Fill End Date 
    select radio Button
    Click button book
    Click button price
    Click button confirm
    Veriy Success Book

User Should Be Able To Book With empty date 
    [Tags]       TC-002    negative 
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login
    Click book Button On dashboard Screen
    Wait Until Element Is Visible    ${locator_from}    
    Select Spinner from city Value    ${locator_from}    ${SPINNER_from}
    Select Spinner to city Value    ${locator_to}    ${SPINNER_to}
    Select Spinner class Value    ${locator_class}    ${SPINNER_class} 
    select radio Button
    Click button book
    Click button price
    Click button confirm
    Veriy Success Book

User Should Be Able To Book With empty radio button
    [Tags]       TC-003    negative
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login
    Click book Button On dashboard Screen
    Wait Until Element Is Visible    ${locator_from}    
    Select Spinner from city Value    ${locator_from}    ${SPINNER_from}
    Select Spinner to city Value    ${locator_to}    ${SPINNER_to}
    Select Spinner class Value    ${locator_class}    ${SPINNER_class}
    Fill Start Date    
    Fill End Date 
    Click button book
    Click button price
    Click button confirm
    Veriy Success Book

User Should Be Able To Book With not choose price
    [Tags]       TC-004   negative
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login
    Click book Button On dashboard Screen
    Wait Until Element Is Visible    ${locator_from}    
    Select Spinner from city Value    ${locator_from}    ${SPINNER_from}
    Select Spinner to city Value    ${locator_to}    ${SPINNER_to}
    Select Spinner class Value    ${locator_class}    ${SPINNER_class}
    Fill Start Date    
    Fill End Date 
    select radio Button
    Click button book
    Click button confirm
    Veriy Success Book
