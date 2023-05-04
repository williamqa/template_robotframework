# Aqui serão criadas Keywords afim de facilitar a criação de scripts de automação.
# Para criação de novas Keywords utilize o conceito de lowerCamelCase(https://pt.wikipedia.org/wiki/CamelCase).
# Para separação utilização underline('_')
# Evitar o uso de qualquer acentuação!
*** Settings ***
Documentation        Customized keywords to facilitate the creation of automation steps
Resource             ${EXECDIR}/Resources/main.resource

*** Variable ***


*** Keywords ***

inputText
    [Arguments]  ${element}  ${text}
    Wait Until Element Is Visible  ${element}  ${timeout}
    Input Text  ${element}  ${text}

clickElement
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}  ${timeout}
    Click Element  ${element}

clickWait
    [Arguments]  ${element}  ${waitElement}
    FOR  ${ITEM}  IN RANGE  0  10
        Run Keyword and Ignore Error  Wait Until Element Is Visible  ${element}  ${timeout}
        Run Keyword and Ignore Error  Click Element  ${element}
        ${progress}  Run Keyword and Ignore Error  Wait Until Element Is Visible  ${waitElement}  ${timeout}
        Exit For Loop If  '${progress[0]}'=='PASS'
    END






