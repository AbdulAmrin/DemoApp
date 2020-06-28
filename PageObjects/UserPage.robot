***Settings***
Documentation  User Page keywords 
Library  SeleniumLibrary
Resource  ../PageObjects/CommonKeywords.robot
Resource  ../Configuration/Config.robot



*** Keywords *** 
Validate user Information
    [Arguments]  ${Username}  ${Firstname}  ${Lastname}  ${Phoneno:}
    Wait Until Page Contains  User Information  20s
    @{List}  Create List  ${Username}  ${Firstname}  ${Lastname}  ${Phoneno:}
  :FOR    ${ELEMENT}    IN    @{List}
    \    Page Should Contain   ${ELEMENT}
    
    
Click Logout Link
    Wait Until Page Contains Element  ${Logout_Button}
    Click Element  ${Logout_Button}
    
Validate User Logged Out
    Wait Until Page Contains Element  ${Login_Button}