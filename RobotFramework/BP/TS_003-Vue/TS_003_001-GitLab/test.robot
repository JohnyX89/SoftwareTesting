*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource   ../../GlobalResources/globalKeywords.robot
Resource   GitLabResources/gitlabVariables.robot

*** Test Cases ***
Pre-conditions
    Set Selenium Speed  0.1
    Prepare Main Page  ${MainPage}  Chrome

TC_003_001_001-Sign in
    wait until element is visible  ${GotoSignIn}
    click element  ${GotoSignIn}
    wait until element is visible  ${Username}  30
    capture page screenshot  Screenshots/SignInPage.png

# cannot handle next Test cases because of Security against automation testing tools

Post-conditions
    Close Browser