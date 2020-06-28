***Settings***
Documentation  Login Page keywords 
Library  SeleniumLibrary
Resource  ../PageObjects/CommonKeywords.robot
Resource  ../Configuration/Config.robot

*** Keywords *** 
Click Login Link
    Wait Until Page Contains Element  ${Login_Button}
    Click Element  ${Login_Button}
    
Input Credentials
    [Arguments]  ${Username}  ${Password}
    Input Text  ${Username_Locator}   ${Username}
    Input Text  ${Password_Locator}  ${Password}
    
Login 
    Click Login Link
    Input Credentials  ${Username}  ${Password}
    Select Submit
    
Validate Error Mesage
    [Arguments]  ${Error_Message}
    Wait Until Page Contains  ${Error_Message}  20s