*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MainPage}  https://laracasts.com/
${ProhlizecChrome}  Chrome

@{MainElements}  //*[@id="root"]/div[1]/div[1]/div/nav/div/div[3]/div/a[1]  //*[@id="root"]/div[1]/div[2]/section[2]   //a[contains(text(),'Get Started')]

${Logo}   //*[@id="logo-white-animated"]
${SignInInput}   //input[@id='email']
${SignInBack}   //body/div[@id='root']/div[2]/div[1]/div[2]/section[1]/button[1]
${MainHeader}   //*[@id="root"]/div[1]/div[1]/div/div/div/div/div/h1

${NavbarFinder}   //body/div[@id='root']/div[1]/div[1]/div[1]/nav[1]/div[1]/div[3]/div[1]/button[1]/*[1]
${FinderInput}   //*[@id="search-button"]
${SearchItButton}   //*[@id="root"]/div[3]/div/div[2]/div/div/div/form/div[1]/label/svg
${NavbarSignIn}   //body/div[@id='root']/div[1]/div[1]/div[1]/nav[1]/div[1]/div[3]/div[1]/a[1]
${NavbarGetStarted}     //a[contains(text(),'Get Started')]

${MainParInfo}
${Text01}   //*[@id="home-skills"]/div/div[1]/div[1]/div[3]
${Number01}  //*[@id="home-skills"]/div/div[1]/div[1]/div[2]

${Complex01}

${SearchPageViewMore}   //*[@id="root"]/div[1]/section/div/div/div[1]/div[2]/div[1]/ul/li[5]/div[2]/a/span

${HeaderUnderStats}  //*[@id="root"]/div[1]/section[2]/div/div[1]/header/h3
${FWSerNumber}  //*[@id="home-skills"]/div/div[3]/div[1]/div[2]/div/div[1]/a/span[1]
${FWVidNumber}  //*[@id="home-skills"]/div/div[3]/div[1]/div[2]/div/div[3]/span[1]
${LangSerNumber}   //*[@id="home-skills"]/div/div[3]/div[2]/div[2]/div/div[1]/a/span[1]
${LangVidNumber}   //*[@id="home-skills"]/div/div[3]/div[2]/div[2]/div/div[3]/span[1]
${TechSerNumber}   //*[@id="home-skills"]/div/div[3]/div[3]/div[2]/div/div[1]/a/span[1]
${TechVidNumber}   //*[@id="home-skills"]/div/div[3]/div[3]/div[2]/div/div[3]/span[1]


${LaravelCourse}  //body/div[@id='root']/div[1]/section[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]
${LaravelCourseGoto}  //body/div[@id='root']/div[1]/section[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/a[1]
${LaravelPageMenu}  //body/div[@id='root']/div[1]/div[2]/section[2]/div[1]/div[1]

${LaravelCoursePlay}   //*[@id="root"]/div[1]/div[2]/section[2]/div/div[1]/div/div[2]/div[2]/a
${LaravelCourseVideo}   //body/div[@id='root']/div[1]/div[1]/nav[1]/div[1]/div[4]/div[1]/a[2]

${BuildAClientCourse}   //*[@id="root"]/div[1]/section/div/div/div[1]/div[2]/div[2]/div/div/div[3]

${Twitter}   //*[@id="root"]/div[1]/div[2]/section[2]/footer/div[1]/div[1]/div[2]/a[2]
