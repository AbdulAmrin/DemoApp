***Settings***
Documentation  Register Page keywords 
Library  SeleniumLibrary
Library  String
Resource  ../PageObjects/CommonKeywords.robot
Resource  ../Configuration/Config.robot

*** Keywords *** 
Click Register Link
    Wait Until Page Contains Element  ${Register_Button}
    Click Element  ${Register_Button}
    
    
Input Valid Details To Register
   ${Value}  Randomize Value
   ${Username}  Set Variable  Username_${Value}
   ${Password}  Set Variable  Password_${Value}
   Set Global Variable  ${Username}
   Set Global Variable  ${Password}
   Input Text  ${Username_Locator}  Username_${Value}
   Input Text  ${Password_Locator}  Password_${Value}
   Input Text  ${Firstname_Locator}  Firstname_${Value}
   Input Text  ${Lastname_Locator}   Lastname_${Value}
   Input Text  ${Phoneno_Locator}   12345${Value}
   [Return]  Username_${Value}  Firstname_${Value}  Lastname_${Value}  12345${Value}
   
Input Invalid Details To Register
   [Arguments]  ${Username}  ${Password}  ${FirstName}  ${LastName}  ${PhoneNo:}
   Input Text  ${Username_Locator}   ${Username}
   Input Text  ${Password_Locator}   ${Password}
   Input Text  ${Firstname_Locator}  ${FirstName}
   Input Text  ${Lastname_Locator}   ${LastName}
   Input Text  ${Phoneno_Locator}    ${PhoneNo:}
    

Register through web portal
    Click Register Link
    ${UserDetails}  Input Valid Details To Register
    Select Submit
    [Return]  ${UserDetails}