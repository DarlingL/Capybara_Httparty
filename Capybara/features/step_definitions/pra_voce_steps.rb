Dado('que acesse a tela inicial da VR') do
    @homepage = HomeVR.new
    @homepage.load
    @pravcpage = PraVoce.new
end
Quando('selecionar a opção Pra Você') do
    @pravcpage.toolbar_pravc
end

Quando('selecionar  {string}') do |string|
    @pravcpage.click_text(string)
end

Então('deve exibir a Google Maps com as opções de pesquisa') do
    @pravcpage.expected_maps
end