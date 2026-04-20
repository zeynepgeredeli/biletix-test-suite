*** Settings ***
Resource    ../resources/common_keywords.robot

*** Test Cases ***
Ana Sayfa Basarili Yuklenir
    Tarayici Ac
    Location Should Contain    biletix
    Tarayici Kapat

Ana Sayfada Arama Kutusu Var
    Tarayici Ac
    Sayfanin Yuklenmesini Bekle
    Page Should Contain Element    xpath=//input[@type='search' or @placeholder]
    Tarayici Kapat

Ana Sayfada Kategoriler Gorünur
    Tarayici Ac
    Sayfanin Yuklenmesini Bekle
    Page Should Contain    Konser
    Tarayici Kapat
