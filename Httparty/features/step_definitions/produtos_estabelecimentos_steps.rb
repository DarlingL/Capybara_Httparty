Dado('Endpoint de consulta de Produtos e Estabelecimentos') do
    @prodEstab = ProdEstab.new
end

Quando('realizar a consultar no Endpoint de Produtos e Estabelecimentos') do
    $response = @prodEstab.getRequest
end

Então('deve retornar status {string} e a chave {string}') do |string, string2|
    #já fiz testes mobile/api/web com cucumber e ruby,
    #prefiro sempre não fazer asserçoes dentro dos steps ... assim sendo chamo um metodo para fazer isso

    code = $response.code
    body = $response.body
    @prodEstab.validate_status(string, code)
    @prodEstab.validate_field_body(string2, body)

    #printando aleatoriamente um typeOfEstablishment
    typeOfEstablishment = rand(1..20)
    puts "Response code: #{$response['typeOfEstablishment'][typeOfEstablishment]['key']}"  
end