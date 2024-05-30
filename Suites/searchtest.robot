*** Settings ***
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Resource            ../PageObjects/BookingPage/bookingPage.robot
Resource            ../PageObjects/SearchPage/searchPage.robot
Test Setup          Run Keywords
...                 Open Flight Application
...    AND          Login With Valid Credential    support@ngendigital.com    abc123
Test Teardown       Close Flight Application

*** Test Cases ***
Test Dengan Data Kosong
    [Tags]       TC-001    negative 
    Klik Menu Search
    Klik Search Button untuk mencari
    Verify Invalid
Test Dengan Data Terisi
    [Tags]       TC-002    positive 
    Klik Menu Search
    Input Booking ID
    Klik Search Button untuk mencari
    Verify Valid
