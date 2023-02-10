
class ProdEstab
    include HTTParty
    default_options.update(verify: false)
    base_uri "https://portal.vr.com.br/api-web/comum/enumerations/"

    def initialize
        @headers = {}
    end

    def getRequest
        self.class.get("/VRPAT", @headers)
    end

    def validate_status(string, code)
        string = string.to_i
        raise "Status Code #{code} não é o sperado !" unless code == string
    end

    def validate_field_body(string2, body)
        raise "O Body não contem a Chave #{string2} esperada !" unless body.include? string2
    end

    # Dependendo do tamanho do projeto os metodos de requests e autenticação
    # poderiam ficar em um helpers e serem importados/chamados nesse arquivo
    # ficando apenas metodos especificos da feature aqui
    # porem como esse projeto é pequeno, aqui ficam todos os metodos
    # poderia usar rspec para asserçoes tbm, mas gosto de customizar rsrs
    

end