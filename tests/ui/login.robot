*** Settings ***
Resource    ../../resources/ui/ui_common.resource
Resource    ../../resources/ui/ui_locators.resource

*** Test Cases ***
Login com credenciais válidas
    [Tags]    login
    Acessar página de login
    Preencher Email    ${VALID_EMAIL}
    Preencher Senha    ${VALID_PASSWORD}
    Clicar em Entrar
    Verificar login com sucesso

Login com email inválido
    [Tags]    login
    Acessar página de login
    Preencher Email    email_invalido@teste.com
    Preencher Senha    ${VALID_PASSWORD}
    Clicar em Entrar
    Verificar mensagem de erro    Usuário ou senha inválidos

Cadastrar novo produto
    [Tags]    produtos
    Realizar Login    ${VALID_EMAIL}    ${VALID_PASSWORD}
    Acessar página de produtos
    Clicar em Cadastrar Novo Produto
    Preencher Dados do Produto
    Clicar em Cadastrar
    Verificar mensagem de sucesso    Cadastro realizado com sucesso