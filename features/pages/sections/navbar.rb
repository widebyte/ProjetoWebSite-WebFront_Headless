class Navbar
    include Capybara::DSL   

    def logout 
        find('.logout').click            
    end    
end 
