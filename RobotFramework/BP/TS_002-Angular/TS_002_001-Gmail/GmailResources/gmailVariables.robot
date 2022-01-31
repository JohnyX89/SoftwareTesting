*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MainPage}   https://www.gmail.com/
${LoginForm}    //*[@id="initialView"]/div[2]

${EmailInput}   //*[@id="identifierId"]
${EmailFill}    burdy8910@gmail.com

${NextButtonFirst}    //*[@id="identifierNext"]/div/button/div[2]
${NextButtonSecond}   //*[@id="passwordNext"]/div/button/div[2]

${PasswordInput}    //*[@id="password"]/div[1]/div/div[1]/input
${PasswprdFill}     Bur.Gma.89
