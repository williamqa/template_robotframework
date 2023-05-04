# Aqui serão declarados todos os usuários e suas respectivas senhas.
*** Settings ***
Documentation    Credentials needed to access the systems during the tests
Resource             ${EXECDIR}/Resources/main.resource

*** Variables ***
&{user}          
...     admin=admin
...     operador=l.lima2

&{password}      
...     admin=ma20nu333
...     operador=#App#0101

