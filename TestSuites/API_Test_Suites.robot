***Settings***
Documentation  API Test Scenarios
Library  ../CustomScripts/Apimethods.py
Library  Collections
Library  String
Resource  ../Configuration/Config.robot


*** Keywords ***
Fetch Authentication Token
    [Arguments]  ${Response}
    ${Token}  Extract Response Content  ${Response}  token
    [Return]  ${Token[0]}


Validate Authentication Status
    [Arguments]  ${Response}
    ${Status}  Extract Response Content  ${Response}  status
    [Return]  ${Status[0]}
    
Validate Registered Users
    [Arguments]  ${Response}  ${Username}
    ${Users}  Extract Response Content  ${Response}  payload
    ${Status}  Run Keyword And Return Status  List Should Contain Value  ${Users[0]}  ${Username}
    Run Keyword If  ${Status}  Log  Users is registered
    ...  ELSE  FAIL  User is not present!
  
Validate User Information Status
    [Arguments]  ${Response}
    ${Status}  Extract Response Content  ${Response}  status
    [Return]  ${Status[0]}
      
Validate User Details  
    [Arguments]  ${Response}  ${FirstName_Expected}
    ${User_Data}  Extract Response Content  ${Response}  payload
    ${Lastname_Actual}  Get From Dictionary  ${User_Data[0]}  lastname
    ${Firstname_Actual}  Get From Dictionary  ${User_Data[0]}  firstname
    ${Phone_Number_Actual}  Get From Dictionary  ${User_Data[0]}  phone
    Should Be Equal  ${Firstname_Actual}  ${FirstName_Expected}

Validate User Updation Status
    [Arguments]  ${Response}
    ${Update_Message}  Extract Response Content  ${Response}  message
    Should Be Equal  ${Update_Message[0]}  Updated

Validate Updated Details
    [Arguments]  ${Username}  ${Token}  ${FirstName_Expected}
    Set Suite Variable   ${FirstName_Expected}
    ${Response}  Get Users  ${URL}/api/users/${Username}  ${Token} 
    ${Status}  Validate User Information Status  ${Response}
    Run Keyword If  '${Status}'!= 'SUCCESS'  FAIL  User Information Not Present!
    Validate User Details  ${Response}  ${FirstName_Expected}

Randomize User Data
    ${Random_String}  Generate Random String  8  [LETTERS][NUMBERS]
    [Return]  ${Random_String}
         


*** Test Cases ***
Review Users Registered in System
    ${Response}  Get Response   ${URL}/api/auth/token  ${Username}  ${Password}
    ${Status}  Validate Authentication Status  ${Response}
    Run Keyword If  '${Status}'!= 'SUCCESS'  FAIL  Authentication is unsuccessful!
    ${Token}  Fetch Authentication Token  ${Response}
    ${Response}  Get Users  ${URL}/api/users  ${Token}
    Validate Registered Users  ${Response}  ${Username}
   
   
Update User Information After Authentication
    ${Response}  Get Response   ${URL}/api/auth/token  ${Username}  ${Password}
    ${Status}  Validate Authentication Status  ${Response}
    Run Keyword If  '${Status}'!= 'SUCCESS'  FAIL  Authentication is unsuccessful!
    ${Token}  Fetch Authentication Token  ${Response}
    ${FirstName_Expected}  Randomize User Data
    ${Response}  Update Users  ${URL}/api/users/${Username}   ${Token}   {"firstname":"${FirstName_Expected}"}
    Validate User Updation Status  ${Response}
    Validate Updated Details  ${Username}  ${Token}  ${FirstName_Expected}
    
     
Get Users Information After Authentication
    ${Response}  Get Response   ${URL}/api/auth/token  ${Username}  ${Password}
    ${Status}  Validate Authentication Status  ${Response}
    Run Keyword If  '${Status}'!= 'SUCCESS'  FAIL  Authentication is unsuccessful!
    ${Token}  Fetch Authentication Token  ${Response}
    ${Response}  Get Users  ${URL}/api/users/${Username}  ${Token} 
    ${Status}  Validate User Information Status  ${Response}
    Run Keyword If  '${Status}'!= 'SUCCESS'  FAIL  User Information Not Present!
    Validate User Details  ${Response}  ${FirstName_Expected}
    
Update User Information with Empty Fields After Authentication
    ${Response}  Get Response   ${URL}/api/auth/token  ${Username}  ${Password}
    ${Status}  Validate Authentication Status  ${Response}
    Run Keyword If  '${Status}'!= 'SUCCESS'  FAIL  Authentication is unsuccessful!
    ${Token}  Fetch Authentication Token  ${Response}
    ${FirstName_Expected}  Randomize User Data
    ${Response}  Update Users  ${URL}/api/users/${Username}   ${Token}   {"firstname":""}
    Validate User Updation Status  ${Response}
    Validate Updated Details  ${Username}  ${Token}  ${EMPTY}

    