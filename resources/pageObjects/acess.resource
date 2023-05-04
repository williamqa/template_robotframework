# Aqui serão definidas todos os locators dos elementos que a automação vai interagir durante a execução dos cenários de teste.
# Para criação de novas Keywords utilize o conceito de lowerCamelCase(https://pt.wikipedia.org/wiki/CamelCase).
# Para separação utilização underline('_')
# Evitar o uso de qualquer acentuação!
# Para elementos do tipo botão, inicie com o termo "btn"
# Para elementos do tipo input, coloque um nome referente ao dado que sera inputado
# Para elementos do tipo mensagem(sucesso, falha, alerta, aviso...), inicie com o termo "msg"
# Para elementos do tipo texto(validação de texto em tela), inicie com o termo "txt"
# Para elementos do tipo combo, inicie com o termo "cmb"
# Para elementos do tipo imagem(logo, banner...), inicie com o termo "img"
# Para elementos do tipo menu, inicie com o termo "menu"
# Para elementos do tipo sub-menu, inicie com o termo "subMenu"
# Para elementos do tipo check box, inicie com o termo "chk"
# Para elementos do tipo tabela, inicie com o termo "tbl"
# Para elementos do tipo loading(carregando, salvando, registrando, aguarde...), inicie com o termo "loading" 
*** Variable ***
&{Acess}  
...     user=name:login
...     psw=name:password
...     btnEntrar=xpath://span[@class='x-btn-button']
...     msgCarregando=xpath://*[text()='Carregando...']