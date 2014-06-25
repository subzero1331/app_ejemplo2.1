require 'spec_helper'

describe "PaginasEstaticas" do
  describe "Pagina Home" do
    it "Se debe encontrar 'App Ejemplo'" do
      visit '/paginas_estaticas/home'
      expect(page).to have_content('App Ejemplo')
    end
    it "debe tener el titulo 'Home'" do
      visit '/paginas_estaticas/home'
      expect(page).to have_title("Ruby on Rails Tutorial Aplicacion Ejemplo | Home")
    end
  end

  describe "Pagina Help" do
    it "Se debe encontrar 'AYUDA'" do
      visit '/paginas_estaticas/help'
      expect(page).to have_content('AYUDA')
    end
    it "debe tener el titulo 'Help'" do
      visit '/paginas_estaticas/help'
      expect(page).to have_title("Ruby on Rails Tutorial Aplicacion Ejemplo | Help")
    end
  end
  
  describe "Pagina Sobre" do
    it "Se debe encontrar 'Info Sobre'" do
      visit '/paginas_estaticas/about'
      expect(page).to have_content('Info Sobre')
    end
    it "debe tener el titulo 'About'" do
      visit '/paginas_estaticas/about'
      expect(page).to have_title("Ruby on Rails Tutorial Aplicacion Ejemplo | About")
    end
  end

end
