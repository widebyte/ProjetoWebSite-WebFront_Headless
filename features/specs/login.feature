            #language: pt
            @login
            Funcionalidade: Login
            Para que eu possa gerenciar as minhas compras no My Store
            Sendo um usuário previamente cadastrado
            Posso acessar o sistema com o meu email e senha

            Cenario: Usuario deve ser autorizado
            Quando faço o login com "testeqaame2@gmail.com" e "123456"
            Então devo ser autenticado

            Esquema do Cenario: Tentativa de login
            Quando faço o login com <email> e <senha>
            Então devo ver a seguinte mensagem de alerta <alerta>

            Exemplos:
            | email                   | senha           | alerta                       |
            | "testeqaame2@gmail.com" | "12344444222@#" | "Authentication failed."     |
            | ""                      | "12345#"        | "An email address required." |
            | "testeqaame2@gmail.com" | ""              | "Password is required."      |



