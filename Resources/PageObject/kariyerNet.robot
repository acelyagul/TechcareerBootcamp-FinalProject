*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary

*** Variables ***
${browser}    chrome
${HOMOPAGE}  https://www.kariyer.net/

*** Keywords ***
open browser to index page
    Open Browser    about:blank   ${browser}
    Maximize Browser Window

go to Homopage
    go to  ${HOMOPAGE}
    click element  xpath://*[@id="index-page"]/body/div[6]/div[1]/button

go to detailed search page
    wait until page contains     DETAYLI ARA
    click element  id=btnFindDetailWork

check the job search page
    wait until location contains  ilanlari

select the city
    click element  css=.cursor-pointer.text-secondary .material-icons
    wait until element is visible  css=[placeholder="Şehir Ara"]
    input text   css=[placeholder="Şehir Ara"]  Mersin
    sleep   2s
    click element  css=.modal-body.mr-4.pr-3 .value.w-auto
    click element  css=.modal-blue-border.k-shadow [class='material-icons p-1']

select the district
    click element  css=[data-test="district-title"]
    wait until element is visible  css=[placeholder="İlçe Ara"]
    input text  css=[placeholder="İlçe Ara"]  Yenişehir
    sleep   2s
    click element  xpath://div[@id='filter-section']/div[@class='k-space large right']/div/div[1]/div/div[2]/div/div[3]/div[@class='calculated-width']/div[@role='dialog']/div/div/div[@class='modal-body mr-4 pr-3']//div[@class='value w-auto']
    click element  css=.modal-backdrop

click the 3 date
    click element  css=div:nth-of-type(5) > .custom-control-label

click the 15 date
    click element  css=div:nth-of-type(7) > .custom-control-label

click the expert
    scroll element into view    css=div:nth-child(6) [class='title text-secondary t-2 w-5']
    click element  css=div:nth-of-type(4) > .bg-white.k-filter-checkbox .collapse.collapse-content.pt-2.show.w-100 > div > div:nth-of-type(4) > .checkbox-items > .k-checkbox-items > .custom-checkbox.custom-control > .custom-control-label > .value.w-auto

click the apply
    click element  css=[data-test="apply-button"]

check the filters
    page should contain   Seçili Filtreler (4)
    page should contain element  css=.chips-wrapper

click on the remove district filter
    click element  css=div:nth-of-type(2) > .material-icons

check the removed district filter
    page should contain   Seçili Filtreler (3)
    page should not contain element  rxpath:///span[@innertext='Yenişehir']

click on the removed expert filter
    click element  css=div:nth-of-type(3) > .material-icons
    page should not contain element  rxpath:///span[@innertext='Uzman']

check the removed expert filer
    page should contain   Seçili Filtreler (2)

click the clear filters
    click element  css=.clear-filter

close the browser
    close browser
