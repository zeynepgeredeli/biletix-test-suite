*** Settings ***
Resource    ../resources/common_keywords.robot

*** Test Cases ***

Etkinlik Sayfasinda Bilet Butonu Var
    Tarayici Ac
    Sayfanin Yuklenmesini Bekle
    Popup Kapat
    Wait Until Element Is Visible    id=s    timeout=10s
    Input Text    id=s    Konser
    Press Keys    id=s    ENTER
    Sleep    2s
    Wait Until Element Is Visible    xpath=//*[@id="all_result"]//a    timeout=10s
    Click Element    xpath=//*[@id="all_result"]//a
    Sleep    2s
    Page Should Contain Element    xpath=//*[contains(@class,'btn') or contains(@class,'bilet')]
    Tarayici Kapat