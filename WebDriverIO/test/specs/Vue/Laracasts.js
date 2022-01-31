// function logStatMessage(serNumber, vidNumber, header) {
//     console.log('Stat message: ');
//     console.log(header + ": series=" + serNumber + ", videos=" + vidNumber);
// }

// describe('Vue_Laracasts', () => {
//     it('000-Prepare main page', () => {
//         browser.url('https://laracasts.com/');
//         browser.maximizeWindow();
//     });

//     it('001-Check navbar items', () => {
//         const signIn = $('//*[@id="root"]/div[1]/div[1]/div/nav/div/div[3]/div/a[1]');    // $('#gh-ac') specify unique selector (id)
//         const mainHeader = $('//*[@id="root"]/div[1]/div[1]/div/div/div/div/div/h1');
//         const footer = $('//*[@id="root"]/div[1]/div[2]/section[2]');

//         signIn.waitForDisplayed();
//         mainHeader.waitForDisplayed();
//         footer.waitForDisplayed();
//         browser.saveScreenshot('./test/screenshots/vue/laracasts/mainPage.png');
//     });

//     it('002-Show sign in', () => {
//         const signIn = $('//*[@id="root"]/div[1]/div[1]/div/nav/div/div[3]/div/a[1]');    
//         const signInInput = $("//input[@id='email']");    

//         signIn.click();
//         signInInput.waitForDisplayed();
//         browser.saveScreenshot('./test/screenshots/vue/laracasts/SignIn.png');
//     });

//     it('003-Close sign in', () => {
//         const signInBack = $("//body/div[@id='root']/div[2]/div[1]/div[2]/section[1]/button[1]");    
//         signInBack.click();
//     });

//     it('004-Check main stats', () => {
//         const headerAboveStats = $('//*[@id="home-skills"]/div/div[1]/div[1]');
//         const fwSerNumber = $('//*[@id="home-skills"]/div/div[3]/div[1]/div[2]/div/div[1]/a/span[1]');
//         const langSerNumber = $('//*[@id="home-skills"]/div/div[3]/div[2]/div[2]/div/div[1]/a/span[1]');
//         const techSerNumber = $('//*[@id="home-skills"]/div/div[3]/div[3]/div[2]/div/div[1]/a/span[1]');

//         headerAboveStats.scrollIntoView();

//         fwSerNumber.moveTo();
//         browser.saveScreenshot('./test/screenshots/vue/laracasts/frameworks.png');

//         langSerNumber.moveTo();
//         browser.saveScreenshot('./test/screenshots/vue/laracasts/languages.png');

//         techSerNumber.moveTo();
//         browser.saveScreenshot('./test/screenshots/vue/laracasts/techniques.png');
//     });

//     it('005-Log main stats', () => {
//         const fwSerNumber = $('//*[@id="home-skills"]/div/div[3]/div[1]/div[2]/div/div[1]/a/span[1]');
//         const fwVidNumber = $('//*[@id="home-skills"]/div/div[3]/div[1]/div[2]/div/div[3]/span[1]');
//         const langSerNumber = $('//*[@id="home-skills"]/div/div[3]/div[2]/div[2]/div/div[1]/a/span[1]');
//         const langVidNumber = $('//*[@id="home-skills"]/div/div[3]/div[2]/div[2]/div/div[3]/span[1]');
//         const techSerNumber = $('//*[@id="home-skills"]/div/div[3]/div[3]/div[2]/div/div[1]/a/span[1]');
//         const techVidNumber = $('//*[@id="home-skills"]/div/div[3]/div[3]/div[2]/div/div[3]/span[1]');

//         logStatMessage(fwSerNumber.getText(), fwVidNumber.getText(), "Frameworks");
//         logStatMessage(langSerNumber.getText(), langVidNumber.getText(), "Languages");
//         logStatMessage(techSerNumber.getText(), techVidNumber.getText(), "Techniques");
//     });

//     it('006-Redirect to Laravel Course', () => {
//         const laravelCourseGoto = $("//body/div[@id='root']/div[1]/section[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/a[1]");
//         const laravelPageMenu = $("//body/div[@id='root']/div[1]/div[2]/section[2]/div[1]/div[1]");

//         laravelCourseGoto.scrollIntoView();
//         laravelCourseGoto.click();

//         laravelPageMenu.waitForDisplayed();
//         expect(browser).toHaveTitle(
//             'Laracasts: Laravel 8 From Scratch'
//         );
//         browser.saveScreenshot('./test/screenshots/vue/laracasts/laravelCourseMenu.png');
//     });

//     it('007-Play Laravel Course', () => {
//         const laravelCoursePlay = $('//*[@id="root"]/div[1]/div[2]/section[2]/div/div[1]/div/div[2]/div[2]/a');
//         const laravelCourseVideo = $("//body/div[@id='root']/div[1]/div[1]/nav[1]/div[1]/div[4]/div[1]/a[2]");

//         laravelCoursePlay.click();

//         laravelCourseVideo.waitForDisplayed();
//         browser.saveScreenshot('./test/screenshots/vue/laracasts/laravelCourseVideoStart.png');

//         browser.pause(5000);
//         laravelCourseVideo.moveTo();
//         browser.saveScreenshot('./test/screenshots/vue/laracasts/laravelCourseVideoStart.png');
//     });

//     it('008-Redirect to main page by logo in navbar', () => {
//         const logo = $('//*[@id="logo-white-animated"]');

//         logo.click();
//         expect(browser).toHaveUrl(
//             'https://laracasts.com/'
//         );
//     });

//     it('009-Show finder', () => {
//         const finder = $("//body/div[@id='root']/div[1]/div[1]/div[1]/nav[1]/div[1]/div[3]/div[1]/button[1]/*[1]");

//         finder.waitForDisplayed();
//         finder.click();
//         browser.pause(300);
//         browser.saveScreenshot('./test/screenshots/vue/laracasts/finder.png');
//     });

//     it('010-Search whisper results for Vue', () => {
//         const finder = $('//*[@id="search-button"]');

//         finder.waitForDisplayed();
//         finder.addValue("Vue");
//         browser.pause(1000);
//         browser.saveScreenshot('./test/screenshots/vue/laracasts/finderWhisper.png');
//     });

//     it('011-Search Vue', () => {
//         const viewMore = $('//*[@id="root"]/div[1]/section/div/div/div[1]/div[2]/div[1]/ul/li[5]/div[2]/a/span');

//         browser.keys('Enter');

//         viewMore.waitForDisplayed();
//         browser.saveScreenshot('./test/screenshots/vue/laracasts/SearchedVue.png');
//     });

//     it('012-Search-Show more of the side menu', () => {
//         const viewMore = $('//*[@id="root"]/div[1]/section/div/div/div[1]/div[2]/div[1]/ul/li[5]/div[2]/a/span');

//         viewMore.click();
//         browser.pause(500);
//         browser.saveScreenshot('./test/screenshots/vue/laracasts/SearchedVueViewMore.png');
//     });

//     it('013-Redirect to course "Build a client app using Vue"', () => {
//         const buildCourse = $('//*[@id="root"]/div[1]/section/div/div/div[1]/div[2]/div[2]/div/div/div[3]');

//         buildCourse.scrollIntoView();
//         buildCourse.click();
//     });

//     it('014-Redirect to Twitter', () => {
//         const twitter = $('//*[@id="root"]/div[1]/div[2]/section[2]/footer/div[1]/div[1]/div[2]/a[2]');
//         const twitterPageElement = $('//*[@id="react-root"]/div/div/div[2]/main/div/div/div/div[1]/div/div[2]/div/div/div[1]/a/div/div[2]/div');

//         twitter.waitForEnabled();
//         twitter.scrollIntoView();
//         twitter.click();
//         browser.switchWindow('https://twitter.com/laracasts');
//         twitterPageElement.waitForDisplayed();
//         browser.saveScreenshot('./test/screenshots/vue/laracasts/twitterPage.png');
//     });
// });