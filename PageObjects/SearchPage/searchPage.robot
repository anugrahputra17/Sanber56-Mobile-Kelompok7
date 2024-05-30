*** Settings ***
Documentation        Segala hal yg berkaitan dengan search
Resource             ../base.robot
Resource             ../LoginPage/loginPage.robot
Library              AppiumLibrary



*** Keywords ***
Klik Menu Search
    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]


Input Booking ID
    Wait Until Element Is Visible    xpath=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]            text=DA935

Klik Search Button untuk mencari
    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]

Verify Invalid
    Wait Until Page Contains         text=Please enter valid Flight Number
Verify Valid
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="DA 935"]
