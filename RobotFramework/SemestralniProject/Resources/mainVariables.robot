*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${ProhlizecChrome}  Chrome
${MainPage}  https://www.nhl.com/
${Dialog}   //*[@id="languageModal"]/div[2]/div/div[2]/button[2]
${Privacy}   //*[@id="homepage_index"]/section/button/i