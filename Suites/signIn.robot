*** Settings ***
Library                AppiumLibrary
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Resource            ../PageObjects/BookingPage/bookingPage.robot
Test Setup          Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_USERNAME}          support@ngendigital.commmm
${INVALID_PASSWORD}          abc1233333


*** Test Cases ***
User Sign In Successfully
    [Tags]       TC-005    positif
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username                            username=${VALID_USERNAME}
    Input User Password                       password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login 

User fails sign in 
    [Tags]       TC-006    negative 
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username                            username=${INVALID_USERNAME}
    Input User Password                       password=${INVALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Invalid Credential


