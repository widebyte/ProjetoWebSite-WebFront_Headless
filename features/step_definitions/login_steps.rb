Quando('faço o login com {string} e {string}') do |email, senha|
    @page_login.autenticar(email, senha)
end
  
Então('devo ser autenticado') do
    expect(@page_login).to have_content @email
end
  
Então('devo ver a seguinte mensagem de alerta {string}') do |mensagem|
    expect(@page_login.mensagem).to eql mensagem
end
