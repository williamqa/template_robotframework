# Neste arquivo vamos definir ações que irão ocorrer ao fim de todo cenário de teste.
# Com a intenção de reduzir o tempo da automação fica convencionado que todos os cenários vão iniciar e terminar na pagina Home.
*** Settings ***
Documentation       Variables and Keywords needed to finalize test scenarios
Resource            ${EXECDIR}/Resources/main.resource


*** Keywords ***
finishTest     
    ${progress}  Run Keyword And Ignore Error  Wait Until Element Is Visible  ${home.menuPrincipal} 
    Run Keyword If  '${progress[0]}'=='Fail'  Close Browser 
    

    