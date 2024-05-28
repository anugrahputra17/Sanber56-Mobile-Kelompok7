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
${start_date}    2019-08-02
${end_date}    2019-08-09
${OK_BUTTON}     xpath=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

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

Fill Start Date
    Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]  
    Click Element    locator=//android.widget.Button[@resource-id="android:id/button1"]

Fill End Date
    Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]   
    Click Element    xpath=//android.widget.Button[@resource-id="android:id/button1"]

select radio Button
    Click Element    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

Click button book
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Click button price
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price1"]

Click button confirm
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]