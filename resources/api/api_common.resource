*** Settings ***
Library    RequestsLibrary
Library    ../../utils/data_generator.py

*** Variables ***
${BASE_URL}     https://serverest.dev

*** Keywords ***
POST Endpoint
    [Arguments]    ${endpoint}    ${payload}
    ${response}=    POST    ${BASE_URL}${endpoint}    json=${payload}    expected_status=any
    Set Test Variable    ${response}

Criar usuário temporário
    ${user_data}=    Gerar dados usuário
    ${response}=    POST    ${BASE_URL}${USERS_ENDPOINT}    json=${user_data}
    RETURN    ${response.json()}