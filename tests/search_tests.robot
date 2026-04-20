*** Settings ***
Resource    ../resources/common_keywords.robot

*** Test Cases ***
Konser Araması Sonuç Getirir
    Tarayici Ac
    Sayfanin Yuklenmesini Bekle
    Popup Kapat
    Input Text    id=s    Konser
    Press Keys    id=s    ENTER
    Sleep    2s
    Page Should Not Contain    Sonuç bulunamadı
    Tarayici Kapat

İstanbul Araması Çalışır
    Tarayici Ac
    Sayfanin Yuklenmesini Bekle
    Popup Kapat
    Input Text    id=s    İstanbul
    Press Keys    id=s    ENTER
    Sleep    2s
    Location Should Contain    search
    Tarayici Kapat