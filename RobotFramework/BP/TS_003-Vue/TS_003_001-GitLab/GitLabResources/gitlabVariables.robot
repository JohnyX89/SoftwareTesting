*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${MainPage}  https://gitlab.com/

${GotoSignIn}  //header/div[2]/ul[1]/li[9]/a[1]

${Username}   //input[@id='user_login']
${UsernameFill}  bury89
${PasswordFill}  Cherie77