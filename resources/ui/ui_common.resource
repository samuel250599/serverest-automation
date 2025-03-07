*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FRONTEND_URL}    https://front.serverest.dev
${VALID_EMAIL}     fulano@qa.com
${VALID_PASSWORD}  teste

*** Keywords ***
Acessar página de login
    Open Browser    ${FRONTEND_URL}/login    chrome
    Maximize Browser Window

Realizar Login
    [Arguments]    ${email}    ${password}
    Acessar página de login
    Preencher Email    ${email}
    Preencher Senha    ${password}
    Clicar em Entrar