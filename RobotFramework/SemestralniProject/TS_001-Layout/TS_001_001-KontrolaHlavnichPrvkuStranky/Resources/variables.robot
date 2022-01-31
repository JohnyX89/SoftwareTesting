*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{MainElements}   //*[@id="homepage_index"]/div[1]/div/div/nav/div[1]/a/img     //div[@class='top-nav__static-wrapper']     //*[@id="content-wrap"]/div/div[2]/main/div[1]/section/div/section/div/div/article[1]/a/div
${Footer}     //footer[@class='site-footer']

${SaveTo}  ../Screenshots/