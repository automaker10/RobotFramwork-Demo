*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    chrome
${url}    https://abhigyank.github.io/To-Do-List/
${add_item}    //input[@id='new-task']
${add_item_click}    //i[contains(text(),'add')]
${tasks_tap}    //a[@href='#todo']
${tasks_archive}    //span[@id='text-1']
${tasks_delete}    //span[@class='mdl-button__ripple-container']
${complete_tap}    //a[@href='#completed']

*** Keywords ***
Go to Web Todo
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep     2

Add Item
    Input Text    xpath:${add_item}    TODO-List 1
    Click Element    xpath:${add_item_click}
    Input Text    xpath:${add_item}    TODO-List 2
    Click Element    xpath:${add_item_click}
    Input Text    xpath:${add_item}    TODO-List 3
    Click Element    xpath:${add_item_click}
    # Sleep     2

TODO Tasks Archive
    Click Element    xpath:${tasks_tap}
    Click Element    xpath:${tasks_archive}
    Click Element    xpath:${tasks_archive}
    # Sleep     2


TODO Tasks Delete
    Click Element    xpath:${tasks_delete}
    # Sleep     2

TODO Complete Tap
    Click Element    xpath:${complete_tap}
    Sleep     3
    Click Element    xpath:${tasks_delete}
    Sleep     3
    # Sleep     2

*** Test Cases ***
Todo Index
    Go to Web Todo
    Add Item
    TODO Tasks Archive
    TODO Tasks Delete
    TODO Complete Tap
