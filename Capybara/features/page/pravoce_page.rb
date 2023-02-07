class PraVoce < SitePrism::Page

  element :pra_vc_option, :css, '.vr-main-navigation__item:nth-child(3) > .vr-main-navigation__link.vr-main-navigation__link--anchor'
  @@maps = ".sidebar.sidebar--mobile"
  
  def toolbar_pravc
    pra_vc_option.hover
  end

  def click_text(string)
    click_link (string)
  end

  def expected_maps
    page.has_css?(@@maps)
  end
end

# Aqui é possivel criar de diversas formas os identificadores, usando o site_prism, criando variavel 
# e recebendo por parametro também 


















