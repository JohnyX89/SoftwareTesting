*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource   ../../GlobalResources/globalKeywords.robot

Resource   MyAppResources/myAppVariables.robot
Resource   MyAppResources/myAppKeywords.robot

*** Test Cases ***
Pre-conditions
    Set Selenium Speed  0.05
    Prepare Main Page  ${MainPage}  Chrome

TC_001_002_001-Check logo, main parapraph and footer
    FOR   ${Element}    IN     @{MainElements}
        Wait Until Element Is Enabled  ${Element}
    END

TC_001_002_002-Check navbar items
    Capture Page Screenshot   Screenshots/BeforeHoverStart.png
    Screenshot During Hover  ${HeaderHome}  Home
    Screenshot During Hover  ${HeaderDropDown}  DropDown
    Screenshot During Hover  ${HeaderAbout}  About

TC_001_002_003-Log main paragraph
    ${Head}=  Get Text  ${MainHead}
    Log To Console  ${Head}

    ${Paragraph}=  Get Text  ${MainParagraph}
    Log To Console  ${Paragraph}

    Log Text From   ${MainHead}
    Log Text From   ${MainParagraph}

#TC_001_002_004-Redirect to Emoji by dropdown item
#   not able to get path to navbar item - Emoji

TC_001_002_005-Emoji filter
    Go To   http://localhost:3000/emoji
    wait until element is visible  ${EmojiSearch}
    Capture Page Screenshot   Screenshots/EmojiPageBegin.png

    Input Text   ${EmojiSearch}  happy
    Capture Page Screenshot   Screenshots/EmojiPageSearchHappy.png

TC_001_002_006-Emoji copy by click
    click element  //body/div[@id='root']/div[1]/div[1]/div[2]/div[6]
    click element  ${EmojiSearch}
    press keys   ${EmojiSearch}  CTRL+v
    Capture Page Screenshot   Screenshots/PastedFromClipboard.png

TC_001_002_007-Redirect to Carousel page by URL
    Go To   http://localhost:3000/carousel
    wait until element is visible  ${CarouselNext}

TC_001_002_008-Carousel switch to next by button
    Capture Page Screenshot   Screenshots/CarouselPageBegin.png

    click element   ${CarouselNext}
    sleep  0.5
    Capture Page Screenshot   Screenshots/CarouselPageFirstNext.png

    click element   ${CarouselNext}
    sleep  0.5
    Capture Page Screenshot   Screenshots/CarouselPageSecondNext.png

TC_001_002_009-Carousel switch to previous by button
    click element   ${CarouselPrevious}
    sleep  0.5
    Capture Page Screenshot   Screenshots/CarouselPageprevious.png

TC_001_002_010-Carousel switch to exact item
    click element   ${CarouselFour}
    sleep  0.5
    Capture Page Screenshot   Screenshots/CarouselPageExactPosition.png

TC_001_002_011-Create new item
    go to   http://localhost:3000/todo
    capture page screenshot   Screenshots/TodoPageBegin.png

    wait until element is visible  ${TodoInputName}
    wait until element is visible  ${TodoInputDes}

    input Text  ${TodoInputName}   Test
    input text  ${TodoInputDes}  New item

    wait until element is enabled  ${TodoAddButton}
    click element   ${TodoAddButton}

    wait until page contains   Test: New item
    capture page screenshot   Screenshots/TodoAdded.png

TC_001_002_012-Make item completed
    click element  ${TodoCheckBoxFirst}
    click element  ${TodoCheckBoxThird}
    capture page screenshot   Screenshots/CheckedTodo.png

TC_001_002_013-Make item not completed
    click element  ${TodoCheckBoxThird}
    capture page screenshot   Screenshots/UncheckedTodo.png

TC_001_002_014-Edit item
    click element  ${TodoEdit}
    input Text  ${TodoEditName}   AAA
    input text  ${TodoEditDes}   BBB
    click element  ${TodoEditSave}
    capture page screenshot   Screenshots/TodoEditedItem.png

TC_001_002_015-Cancel during edit item
    click element  ${TodoEdit}
    input Text  ${TodoEditName}   XXX
    input text  ${TodoEditDes}   YYY
    click element  ${TodoEditCancel}
    capture page screenshot   Screenshots/TodoEditedCancel.png

TC_001_002_016-Delete item
    click element  ${TodoDelete}
    capture page screenshot   Screenshots/TodoDeletedItem.png

TC_001_002_017-Redirect to About by navbar item
    click element   ${AboutPage}
    Location Should Contain   about
    capture page screenshot   Screenshots/AboutPage.png
    log location

TC_001_002_018-Redirect to Main page by logo
    click element  ${Logo}
    #overit log
    location should be  http://localhost:3000/
    log location

Post-conditions
    Close Browser