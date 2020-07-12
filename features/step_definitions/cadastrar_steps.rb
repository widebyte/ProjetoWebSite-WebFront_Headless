Quando('preencher o campo de email') do
    @page_cadastro.infomarEmail    
end
  
Quando('clicar no botão Create an account') do
    @page_cadastro.botaoCriarConta

end

Então('o sistema deve redirecionar para a página de cadastro do usuário {string} {string} {string} {string} {string} {string} {string} {string} {string} {string} {string} {string} {string} {string} {string}') do |nome, sobrenome, senha, empresa, data, mes, ano, endereco, endereco2, cidade, estado, cep, outros, telefone, celular|
    @page_cadastro.selecionarTitulo
    @page_cadastro.informacao_pessoal(nome, sobrenome, senha)
    @page_cadastro.seu_endereco(empresa, endereco, endereco2, cidade, cep, outros, telefone, celular)
    @page_cadastro.clicarRegistrar
    @navbar.logout
end
  