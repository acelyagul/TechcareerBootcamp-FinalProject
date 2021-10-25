*** Settings ***
Documentation    Kariyernet Filtreler
Resource  ../PageObject/kariyerNet.robot

*** Keywords ***
check the filter page
    kariyerNet.open browser to index page
    kariyerNet.go to Homopage
    kariyerNet.go to detailed search page
    kariyerNet.check the job search page
    kariyerNet.select the city
    kariyerNet.select the district
    kariyerNet.click the 3 date
    kariyerNet.click the expert
    kariyerNet.click the apply
    sleep  5s
    kariyerNet.check the filters
    kariyerNet.click on the remove district filter
    sleep  5s
    kariyerNet.check the removed district filter
    kariyerNet.click on the removed expert filter
    sleep  5s
    kariyerNet.check the removed expert filer
    sleep  5s
    kariyerNet.close the browser


check the clear filters and date filter
    kariyerNet.open browser to index page
    kariyerNet.go to Homopage
    kariyerNet.go to detailed search page
    kariyerNet.check the job search page
    kariyerNet.select the city
    kariyerNet.select the district
    kariyerNet.click the 15 date
    kariyerNet.click the expert
    kariyerNet.click the apply
    sleep  5s
    kariyerNet.check the filters
    kariyerNet.click the clear filters
    kariyerNet.check the clear filters
    sleep  5s
    kariyerNet.close the browser