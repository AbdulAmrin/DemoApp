***Settings***
Documentation  UI Test Scenarios
Test SetUp  Launch Browser
Test Teardown  Close Browser
Resource  ../PageObjects/CommonKeywords.robot
Resource  ../PageObjects/RegistrationPage.robot
Resource  ../PageObjects/UserPage.robot
Resource  ../PageObjects/LoginPage.robot


*** Test Cases *** 
Review User Information From Main Menu
    [Documentation]  Register through web portal, login with same credentials,validate uder details in user page
    ${UserDetails}  Register through web portal
    Login
    Validate user Information  ${UserDetails[0]}  ${UserDetails[1]}  ${UserDetails[2]}  ${UserDetails[3]}
    
Login With Invalid Credentials
    [Documentation]  Naviagte to login page, input invalid username and password,validate error message
    Click Login Link
    Input Credentials  invalid_username  invalid_password
    Select Submit
    Validate Error Mesage  You provided incorrect login details
 
Verify Logout Functionality After Login
    [Documentation]  Naviagte to login page, login,logout,validate user logged out
    Login 
    Click Logout Link
    Validate User Logged Out
    
Register with Invalid userDetails
    [Documentation]  Navigate to register page, Input invalid user details,Validate error message
    Click Register Link
    Input Invalid Details To Register  i  i  i  i  1
    Select Submit
    Validate Error Mesage  Password should have min: x characters in length
    