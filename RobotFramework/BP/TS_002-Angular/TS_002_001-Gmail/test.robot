*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource   ../../GlobalResources/globalKeywords.robot
Resource   GmailResources/gmailVariables.robot

*** Test Cases ***
Pre-conditions
    Set Selenium Speed  0.2
    Prepare Main Page  ${MainPage}  Chrome

TC_002_001_001-Login
    Wait Until Element Is Visible  ${LoginForm}
    Wait Until Element Is Visible   ${EmailInput}
    Input Text   ${EmailInput}   ${EmailFill}
    Capture Page Screenshot     Screenshots/GmailEmailInput.png
    Click Element   ${NextButtonFirst}
    Sleep  5s
    Capture Page Screenshot     Screenshots/GmailAfterFirstNext.png
    Wait Until Element Is Visible   ${PasswordInput}
    Input Text   ${PasswordInput}   ${PasswordFill}
    Capture Page Screenshot     Screenshots/GmailPasswordInput.png
    Click Button   ${NextButtonSecond}

TC_002_001_002-New message
    capture page screenshot   Screenshots/GmailMainPageStart.png
    wait until element is visible  //*[@id=":m5"]/div/div
    click element   //*[@id=":m5"]/div/div

# cannot handle next Test cases because of Security against automation testing tools

Post-conditions
    Close Browser