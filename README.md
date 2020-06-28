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



# Testing Task: 

* Report of executed tests 
 ``` 
 Attached to github repository
  ``` 
  
* Report of found issues/bugs/Exploratory testing report
``` 
1.Phone no. should accept only numbers
2.Password should meet certain complexity requirements
3.Username should meet certain length constraints
4.Phone number should meet certain length constraints
5.Cannot update user details through PUT method (data.iteritems has to be replaced with data.items inorder to be Python 3.7 compatible)

  ``` 

* Answers to the questions related testing and testability 
* Tell us what improvement would you propose for the app 
* If you would be given a week to do quality assurance for this product, briefly plan the tasks based on your skills, knowledge and expertise 

 ``` 
 Most importantly I’ll spend sometime to quickly grasp the domain knowledge in order to efficiently test the product.
 If certain concepts are not clear I’ll ask the product owner/team lead/developer and get the necessary details.
 Based on my understanding I’ll come up with Test Plan,Test cases,Quality Gates(acceptance and exit criteria) for each feature.So during testing if these criteria are not satisfied inform the developer with bug status reopened.
 Go thorough manual testing(smoke testing) if automation is not yet implemented.
 Then sanity testing followed by regression testing.
 Also perform Exploratory testing from an end-user’s perspective without following any test plan documentation.
If automation scripts are already in place run smoke and regression test suites.
Create a bug report stating the priority and severity of the issues found and wait until the issues are fixed.
Through automation we can run browser level tests,API level tests ,query the Database  and ensure whether the expected matches the actual result.
```
 
