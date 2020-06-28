***Settings***
Documentation  Configuration File for URLs,Username,Password..etc

*** Variables ***
${URL}  http://localhost:8080
${Browser}  %{Browser}
${Username}  %{Username}
${Password}  %{Password}
${FirstName_Expected}

###############################################

${Register_Button}  css=[href*='register']
${Submit_Button}   css=[type='submit']
${Login_Button}  css=[href*='login']
${Logout_Button}  css=[href*='/logout']
${Username_Locator}   username
${Password_Locator}   password
${Firstname_Locator}   firstname
${Lastname_Locator}   lastname
${Phoneno_Locator}   phone 