*** Settings ***
Resource    ../resources/common_keywords.robot

*** Test Cases ***
Istanbul Sehir Filtresi Calisir
    Tarayici Ac
    Sayfanin Yuklenmesini Bekle
    Popup Kapat
    Wait Until Element Is Visible    id=city_sb    timeout=10s
    Click Element    id=city_sb
    Sleep    1s
    Page Should Contain    İstanbul
    Tarayici Kapat

Kategori Filtresi Acilir
    Tarayici Ac
    Sayfanin Yuklenmesini Bekle
    Popup Kapat
    Wait Until Element Is Visible    id=category_sb    timeout=10s
    Click Element    id=category_sb
    Sleep    1s
    Page Should Contain    Sahne
    Tarayici Kapat