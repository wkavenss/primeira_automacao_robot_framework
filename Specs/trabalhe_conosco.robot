*** Settings ***

Library    SeleniumLibrary
Resource    ../Pages/trabalhe_conosco.robot
Suite Setup    Open Browser    about:blank    chrome
Suite Teardown    Close Browser

*** Variables ***
${url}    https://jobs.quickin.io/primecontrol/apply?src=website

*** Test Cases ***
Testando
    Go To    ${url}
    Wait Until Page Contains Element    ${trabalheConosco.submeter}
    Input Text    ${trabalheConosco.nome}    ${preencheFormulario.nome}
    Input Text    ${trabalheConosco.cargoPretendido}    ${preencheFormulario.cargoPretendido}
    Input Text    ${trabalheConosco.pretensaoSalarial}    ${preencheFormulario.pretensaoSalarial}
    Input Text    ${trabalheConosco.email}    ${preencheFormulario.email}
    Input Text    ${trabalheConosco.telefone}    ${preencheFormulario.telefone}
    Select From List By Value    ${trabalheConosco.pais}    ${preencheFormulario.pais}
    Input Text    ${trabalheConosco.estado}    ${preencheFormulario.estado}
    Input Text    ${trabalheConosco.cidade}    ${preencheFormulario.cidade}
    Input Text    ${trabalheConosco.bairro}    ${preencheFormulario.bairro}
    Input Text    ${trabalheConosco.endereco}    ${preencheFormulario.endereco}
    Input Text    ${trabalheConosco.cep}    ${preencheFormulario.cep}
    Input Text    ${trabalheConosco.qualificacoes}    ${preencheFormulario.qualificacoes}
    Choose File    ${trabalheConosco.curriculo}    ${preencheFormulario.curriculo}
    Wait Until Page Contains    CurriculoTeste.pdf
    Click Element    ${trabalheConosco.consentimento}
    Scroll Element Into View    ${trabalheConosco.submeter}
    Click Button    ${trabalheConosco.submeter}
    Wait Until Page Contains    sucesso    10