*** Settings ***
Resource    ../Resources/Application/kariyerNetApp.robot


*** Test Cases ***
verify the filters
    kariyerNetApp.check the filter page

verify the clear all filters
    kariyerNetApp.check the clear filters and date filter
