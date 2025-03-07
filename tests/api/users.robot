*** Settings ***
Resource    ../../resources/api/api_common.resource
Resource    ../../resources/api/api_endpoints.resource

*** Test Cases ***
Criar usuário administrador
    [Tags]    users
    ${user_data}=    Gerar dados usuário    administrador=true
    POST Endpoint    ${USERS_ENDPOINT}    ${user_data}
    Status Should Be    201
    Response Should Contain    message    Cadastro realizado com sucesso

Buscar usuário por ID
    [Tags]    users
    ${user}=    Criar usuário temporário
    GET Endpoint    ${USERS_ENDPOINT}/${user['_id']}
    Status Should Be    200
    Response Should Contain    nome    ${user['nome']}

Login via API
    [Tags]    auth
    ${credenciais}=    Criar credenciais válidas
    POST Endpoint    ${LOGIN_ENDPOINT}    ${credenciais}
    Status Should Be    200
    Response Should Contain Key    authorization