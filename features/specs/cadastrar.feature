            #language: pt
            @cadastrar
            Funcionalidade: Cadastrar Usuário
            Para que eu possa gerenciar as minhas compras no My Store
            Torna-se necessário o cadastro do usuário no sistema

            Cenário: Cadastro
            Quando preencher o campo de email
            E clicar no botão Create an account
            Então o sistema deve redirecionar para a página de cadastro do usuário <nome> <Sobrenome> <Senha> <Empresa> <Data> <Mes> <Ano> <Endereco> <Endereco2> <Cidade> <Estado> <CEP> <Outros> <Telefone> <Celular>

            Exemplos:
            | nome    | Sobrenome | Senha    | Empresa      | Data | Mes       | Ano    | Endereco  | Endereco2           | Cidade           | Estado    | CEP     | Outros               | Telefone        | Celular          |
            | "Silva" | "Barbosa" | "123456" | "Enterprise" | "31" | "January" | "2000" | "Rua Ame" | "Apartamento Ame 2" | "Rio de Janeiro" | "Alabama" | "23456" | "Nenhuma informacao" | "+552127235103" | "+5521970025999" |

