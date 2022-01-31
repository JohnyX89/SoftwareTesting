// describe('Vue_GitLab', () => {
//     it('000-Prepare main page', () => {
//         browser.url('https://about.gitlab.com/');
//         browser.maximizeWindow();

//         browser.saveScreenshot('./test/screenshots/vue/gitlab/preparedFirstPage.png');
//     });

//     it('001-Sign in', () => {
//         const gotoSignIn = $("//header/div[2]/ul[1]/li[9]/a[1]");    // $('#gh-ac') specify unique selector (id)
//         const username = $("//input[@id='user_login']");

//         gotoSignIn.click();
//         username.waitForDisplayed();
//     });

//     // cannot handle next Test cases because of Security against automation testing tools
// });