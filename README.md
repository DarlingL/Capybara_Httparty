# Capybara_Httparty
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/DarlingL/Capybara_Httparty/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/DarlingL/Capybara_Httparty/tree/main)


## Para Iniciar ##


### Instalar o bundler ###
Na raiz do projeto execute:
```shell
gem install bundler
```

### Instalar Gems Necessárias dos dois projetos (web e api)  ###
Na raiz do projeto execute:
```shell
bundle install
```

## Executando ##

### Rodar a Automação Web ###
Dentro do diretório `capybara_httparty/Capybara` execute:
```shell
cucumber 
```
Para uma execução com report, execute:
```shell
cucumber --publish
```

### Obs: Automação Web ###
Browser utilizado no teste é o chrome, necessário instalar chromeDriver compatível com a versão local do chrome e seu sistema operacional! [Link de Apoio](https://chromedriver.chromium.org/downloads)


______________________________________________________________________________________________________

### Rodar a Automação Api ###
Dentro do diretório `capybara_httparty/Httparty` execute:
```shell
cucumber 
```
Para uma execução com report, execute:
```shell
cucumber --publish
```
