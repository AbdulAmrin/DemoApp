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
* Apimethods.py file has necessary methods to drive API Automation
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
6.No successful message after valid user registration
7.No error messages are displayed when user is registered without meeting type/length constraints for textfields

``` 
* Tell us what improvement would you propose for the app 
```
1.Only valid input fields should be accepted while user registration
2.Password requirements should meet atleast alphabetic,numeric,special character combinations.
3.User should be informed with success message after registration
4.A small API fix for put_specific_user method (have to be Python 3.7 compatible ) when user tries to update user details with data.iteritems
``` 

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
* How much time it took

```
Around 3 hours
```

* Instructions how to run it and short description of components, including external libraries 

```
pip install robotframework
pip install robotframework-seleniumlibrary
pip install requests
pip install jsonpath

Clone the git repository 
Open TestSuites Folder through terminal 
Run below command:-

robot -v Browser:Chrome -v Username:${Username} -v Password:${Password} *.robot  

For UI Automation, SeleniumLibrary is used as external library.
Random values are used for each parameter during user registration
These values are then verified after user login.
For API Automation, requests package is used and API methods are implemented in Apimethods.py file
```

* How do you review code? 

```
Code is reviewed mainly to understand what changes has taken place.
We can use staic code analyzer like SonarQube to inspect code quality.
Based on that tester can cover unit and integration tests for those.
Ask questions to developers if certain functionalities are not clear, provide comments and ask them why did they implement in such fashion.
Ask the developer to walk through the steps and make you understand the desired functionality or acceptance criteria.
Try to understand for each section of the application code what business logic is implemented.
```

* How do you enforce coding standards? 

```
Request the developer to add meaningful function/method and variable names.
Ensure code re-usability with reusable components without impacting performance degradation
Add exception handling in case of any failures with understandable error messages inorder to debug.
Add proper comments if the logic is too complicated.
Breakdown the complex code logic into a simplified level.
```

