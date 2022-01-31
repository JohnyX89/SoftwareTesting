*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LoupIcon}   //div[@class='top-nav__search']
${LoupText}    //input[@id='top-nav__search-autocomplete__input']
${LoupPlayer}   //tr[@class='data-row row-idx-27']//td[@class='results-table__player-td']
${LoupSearch}   //a[@class='full-results-link']



${Searched}   //*[@id="ss-searchform__input"]
${SearchedLabel}   //*[@id="content-wrap"]/section/div[2]/div/div/div[1]/div[2]/div/div[2]/section/div[2]/div/label[1]
${SearchedArticles}   //*[@id="content-wrap"]/section/div[2]/div/div/div[1]/div[2]/div/div[2]/section/div[2]/div/label[2]
${SearchedVideos}   //*[@id="content-wrap"]/section/div[2]/div/div/div[1]/div[2]/div/div[2]/section/div[2]/div/label[3]

${Advanced}     //*[@id="content-wrap"]/section/div[2]/div/div/div[1]/div[2]/div/div[2]/section/div[2]/a
${TimeButton}   //*[@id="content-wrap"]/section/div[2]/div/div/div[1]/div[2]/div/div[2]/section/div[3]/div[1]

${PastDay}   //a[contains(text(),'Past 24 hours')]
${PastWeek}   //a[contains(text(),'Past Week')]
${PastMonth}   //a[contains(text(),'Past month')]
${PastYear}   //a[contains(text(),'Past year')]


${PlayerStats}   //*[@id="career"]/h5



${SaveTo}  ../Screenshots/
