*** Settings ***
Documentation        Segala hal yg berkaitan dengan search
Resource             ../base.robot
Resource             ../LoginPage/loginPage.robot
Library              AppiumLibrary



*** Keywords ***
Klik Menu Search
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/button6" and @text="Search"]

Input Booking ID
    Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]            text='DA935'

Klik Search Button untuk mencari
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]
