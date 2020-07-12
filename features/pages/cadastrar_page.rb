class Cadastrar
    include Capybara::DSL    
        
    def infomarEmail
        #fill_in('email_create', with: Faker::Internet.email) #caso queiram rodar com a API FAker. Apagar a linha de baixo.
        fill_in('email_create', with:'testeqaame2@gmail.com')
    end

    def botaoCriarConta
        find('#SubmitCreate').click
    end

    def selecionarTitulo        
        find('#uniform-id_gender1.radio').click
    end

    def informacao_pessoal(nome, sobrenome, senha)        
        find('#customer_firstname').send_keys(nome)
        find('#customer_lastname').send_keys(sobrenome)
        find('#passwd').send_keys(senha)
        find(:xpath, "//select[@id='days']/option[@value='#{31}']").click
        find(:xpath, "//select[@id='months']/option[@value='#{1}']").click 
        find(:xpath, "//select[@id='years']/option[@value='#{2000}']").click
    end

    def seu_endereco(empresa, endereco, endereco2, cidade, cep, outros, telefone, celular)
        find('#company').send_keys(empresa)
        find('#address1').send_keys(endereco)
        find('#address2').send_keys(endereco2)
        find('#city').send_keys(cidade)
        find(:xpath, "//select[@id='id_state']/option[@value='#{1}']").click
        find('#postcode').send_keys(cep)
        find('#other').send_keys(outros)
        find('#phone').send_keys(telefone)
        find('#phone_mobile').send_keys(celular)
    end   

    def clicarRegistrar
        click_button 'Register'
        sleep 5
    end    
end