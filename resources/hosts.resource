# Aqui serão declaradas as urls dos respectivos ambientes em que a automação será executada.
*** Settings ***
Documentation       Urls of the websites used in the tests
Resource             ${EXECDIR}/Resources/main.resource

*** Variables ***
&{url}            
...     staging=https://www.google.com/
#...     development=https://www.google.com/
#...     qa=https://www.google.com/
