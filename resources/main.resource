# Aqui serão declarados todos os arquivos que compõe o projeto de automação.
# Caso o arquivo não esteja declarado aqui, o script criado ira falhar.
*** Settings ***
Documentation         This file contains all the resource files.
...                   Import only this file to use all the resources contained in the files below

Resource    credentials.resource
Resource    hosts.resource
Resource    helper.robot
Resource    suit_setup.robot
Resource    suit_teardown.robot
Resource    ${CURDIR}/Objects/pageAcesso.resource

