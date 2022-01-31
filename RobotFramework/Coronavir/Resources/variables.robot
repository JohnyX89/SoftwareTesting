*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ProhlizecChrome}  Chrome
${MainPage}  https://www.worldometers.info/
${Cases}   /html/body/div[3]/div[2]/div[1]/div/div[8]/div[1]/div/div[2]/div/div[1]/div[1]
${CasesCountry}  //*[@id="maincounter-wrap"]/div/span