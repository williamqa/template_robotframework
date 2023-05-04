# Neste arquivo vamos definir ações e variaveis para o início dos cenários de teste.
# É importante que toda Library que for adicionada ao projeto esteja declarada junto as que estão abaixo.
# Com a intenção de reduzir o tempo da automação fica convencionado que todos os cenários vão iniciar e terminar na pagina Home.
*** Settings ***
Documentation       Variables and Keywords needed to start the test scenarios
Library             SeleniumLibrary
Library             String
Library             Collections
Library             OperatingSystem
Library             DateTime
Library             FakerLibrary  locale=pt_BR
Library             ${EXECDIR}/Libraries/pythonLibrary.py
Resource            ${EXECDIR}/Resources/main.resource

*** Variables ***
${CHROMEDRIVER_PATH}    C:\\drives\\

*** Keywords ***
startTest
    ${progress}  Run Keyword And Ignore Error  Wait Until Element Is Visible  ${home.menuPrincipal} 
    Run Keyword If  '${progress[0]}'=='FAIL'  productInitialize 

productInitialize
    Open Browser    about:blank    chrome  executable_path=${CHROMEDRIVER_PATH}
    Maximize Browser Window
    Go To  ${url.staging}



