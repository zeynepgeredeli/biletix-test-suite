*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}      https://www.biletix.com
${BROWSER}       chrome
${DELAY}         1s

*** Keywords ***
Tarayici Ac
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Tarayici Kapat
    Close Browser

Sayfanin Yuklenmesini Bekle
    Wait Until Element Is Visible    tag:body    timeout=10s

Popup Kapat
    Wait Until Element Is Visible    xpath=//*[@id="adddialog2"]/div    timeout=10s
    Click Element    xpath=//*[@id="adddialog2"]/div