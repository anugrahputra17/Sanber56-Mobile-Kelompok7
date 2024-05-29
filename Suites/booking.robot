*** Settings ***
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Resource            ../PageObjects/BookingPage/bookingPage.robot
Test Setup          Run Keywords
...                 Open Flight Application
...    AND          Login With Valid Credential    support@ngendigital.com    abc123
...    AND          Click book Button On dashboard Screen
Test Teardown       Close Flight Application
    
*** Test Cases ***
Success Booking With Empty Data
    [Tags]       TC-001    negative 
    Click button book
    Click button confirm
    Verify Success Book

Success Booking Round Trip Feature
    [Tags]       TC-002    positive
    roundTrip
    Fill Start Date
    Fill End Date
    select radio Button
    Click button book
    Click button price
    Click button confirm
    Verify Success Book
