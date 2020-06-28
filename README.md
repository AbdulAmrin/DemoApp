# Folder Structure

```
├── Configuration
│   └── Config.robot
├── CustomScripts
│   └── Apimethods.py
├── PageObjects
│   ├── CommonKeywords.robot
│   ├── LoginPage.robot
│   ├── RegistrationPage.robot
│   └── UserPage.robot
├── TestSuites
│   ├── API_Test_Suites.robot
│   └── UI_Test_Scenarios.robot
├── log.html
├── output.xml
├── report.html
└── selenium-screenshot-1.png
```

# Approach to the implementation 

* Using page Object design pattern for UI Automation
* API methods are implemented using requests module 
* Apimethods.p file has necessary methods to drive API Automation
* Unit test for API's are implemented as part of test cases through Acceptance Criteria
* User Details are randomized using `String` Library 
* Username,Password (API) and Browser variables can be passed through command line using :-
```cd TestSuites
robot -v Browser:Chrome -v Username:test -v Password:test *.robot 
```
* External Library used `SeleniumLibrary`  
