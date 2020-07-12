Before do
    @page_login = Login.new
    @page_cadastro = Cadastrar.new
    @navbar = Navbar.new
    visit 'http://automationpractice.com/index.php'
    Capybara.page.driver.browser.manage.window.maximize
    click_link 'Sign in'
end


After do |scenario|
    nome_cenario = scenario.name.gsub(/[A^Za-z0-9 ]/, '')
    nome_cenario = nome_cenario.gsub(' ', '_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
end 