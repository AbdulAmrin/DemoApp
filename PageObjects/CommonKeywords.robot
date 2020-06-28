***Settings***
Documentation  Common keywords 
Library  SeleniumLibrary
Library  String
Resource  ../Configuration/Config.robot

*** Keywords *** 
Launch Browser
    Open Browser   ${URL}  ${Browser}
    Maximize Browser Window
    
Randomize Value
    ${Value}  Generate Random String  5  [NUMBERS]
    [Return]  ${Value}  
   
Select Submit
   Click Element  ${Submit_Button}