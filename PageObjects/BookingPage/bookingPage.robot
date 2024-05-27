*** Settings ***
Documentation        Segala hal yg berkaitan dengan login
Resource             ../base.robot
Resource             ../HomePage/homePage.robot
Resource            ../LoginPage/loginPage.robot

*** Variables ***
${locator_from}    xpath=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]
${locator_to}    xpath=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]
${locator_class}    xpath=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]
${SPINNER_from}    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="New York"]
${SPINNER_to}    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="London"]
${SPINNER_class}    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Economy"]
${DATE_FIELD}    xpath=//android.widget.EditText[@resource-id='com.example:id/date_field']
${OK_BUTTON}     xpath=//android.widget.Button[@text='OK']

*** Keywords ***
Click book Button On dashboard Screen
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]

Select Spinner from city Value
    [Arguments]    ${locator_from}    ${SPINNER_from}
    Click Element    ${locator_from}
    Wait Until Element Is Visible    ${SPINNER_from}    
    Click Element    ${SPINNER_from}

Select Spinner to city Value
    [Arguments]    ${locator_to}    ${SPINNER_to}
    Click Element    ${locator_to}
    Wait Until Element Is Visible    ${SPINNER_to}    
    Click Element    ${SPINNER_to}

Select Spinner class Value
    [Arguments]    ${locator_class}    ${SPINNER_class}
    Click Element    ${locator_class}
    Wait Until Element Is Visible    ${SPINNER_class}    
    Click Element    ${SPINNER_class}

Select start date Value
    [Arguments]    ${locator_class}    ${SPINNER_class}
    Click Element    ${locator_class}
    Wait Until Element Is Visible    ${SPINNER_class}    
    Click Element    ${SPINNER_class}

Select end date Value
    [Arguments]    ${locator_class}    ${SPINNER_class}
    Click Element    ${locator_class}
    Wait Until Element Is Visible    ${SPINNER_class}    
    Click Element    ${SPINNER_class}

Set Date
    [Arguments]    ${locator}    ${date}
    Click Element    ${locator}
    Set Date   ${date}
    Click Element    ${OK_BUTTON}