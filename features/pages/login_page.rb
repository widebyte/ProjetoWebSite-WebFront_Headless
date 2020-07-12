class Login
    include Capybara::DSL

    def autenticar(email, senha)
        find('#email').send_keys(email)
        find('#passwd').send_keys(senha)
        find('#SubmitLogin').click
    end    
    
    def mensagem
        find('.alert-danger > ol > li').text
    end
end