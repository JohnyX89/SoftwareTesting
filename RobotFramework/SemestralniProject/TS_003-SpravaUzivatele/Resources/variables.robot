*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PersonIcon}   //i[@class='top-nav__account__icon top-nav__icon top-nav__icon--account']
${SignIn}    //div[@class='top-nav__account-menu-sign-in']


${URL1}   https://account.nhl.com/ui/?client_id=a2nhl&lang=en&redirect_uri=https%3A%2F%2Faccount.nhl.com%2Fui%2Fpub%2Flogin&returnUrl=https%3A%2F%2Fwww.nhl.com%2F
${URL2}   https://account.nhl.com/ui/register?client_id=a2nhl&lang=en&redirect_uri=https%3A%2F%2Faccount.nhl.com%2Fui%2Fpub%2Flogin&returnUrl=https%3A%2F%2Fwww.nhl.com%2F
${URLNHL}   https://www.nhl.com/
${URLMyProfile}   https://account.nhl.com/ui/?lang=en&returnLabel=NHL.com&returnUrl=https%3A%2F%2Fwww.nhl.com%2F


@{FormInputs}   //input[@placeholder='Email Address']   //input[@placeholder='First Name']  //input[@placeholder='Last Name']   //input[@placeholder='Password']    //input[@placeholder='Confirm Password']       //body/div[@id='root']/div[@id='wrapper']/div[@id='main-content']/div[@class='content']/div[@class='register-container']/div[@class='middle']/div[@class='content-container']/form[@class='profile-form']/div[6]/div[1]/div[1]/div[1]    //input[@placeholder='Postal Code']     //body/div[@id='root']/div[@id='wrapper']/div[@id='main-content']/div[@class='content']/div[@class='register-container']/div[@class='middle']/div[@class='content-container']/form[@class='profile-form']/div[8]/div[1]/div[1]/div[1]    //input[contains(@class,'nhl-button')]

${Email}    //input[@placeholder='Email Address']
${FirstName}    //input[@placeholder='First Name']
${LastName}    //input[@placeholder='Last Name']
${Password}    //input[@placeholder='Password']
${ConfirmPassword}    //input[@placeholder='Confirm Password']

${CountryMenu}      //*[@id="main-content"]/div/div[3]/div[2]/div[2]/form/div[6]/div[1]/div/div[2]
${CountrySelect}    //div[contains(text(),'United States of America')]

${PostalCode}   //input[@placeholder='Zip/Postal Code']

${TeamMenu}   //body/div[@id='root']/div[@id='wrapper']/div[@id='main-content']/div[@class='content']/div[@class='register-container']/div[@class='middle']/div[@class='content-container']/form[@class='profile-form']/div[8]/div[1]/div[1]
${TeamSelect}  //div[contains(text(),'Boston Bruins')]

${RegisterButton}   //input[contains(@class,'nhl-button')]


${MyProfile}    //*[@id="homepage_index"]/div[1]/div/div/nav/div[2]/div[2]/div/a/div

${MyEmail}   //input[@placeholder='Email Address']
${MyAddress}   //input[@placeholder='Address']







${SignInNHL}    //span[@class='my-rogers-sign-in-link']
@{LoginItems}   //*[@id="main-content"]/div/div[2]/div[1]/form/div[1]/div/input    //*[@id="main-content"]/div/div[2]/div[1]/form/div[2]/input     //*[@id="main-content"]/div/div[2]/div[1]/form/input

${LoginName}    //*[@id="main-content"]/div/div[2]/div[1]/form/div[1]/div/input
${LoginPassword}    //*[@id="main-content"]/div/div[2]/div[1]/form/div[2]/input
${LoginButton}    //*[@id="main-content"]/div/div[2]/div[1]/form/input


${SaveTo}  ../Screenshots/