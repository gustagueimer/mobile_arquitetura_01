# Aula 02 - Atividade 04: Aplicação que exibe produtos providos de uma API

Uma aplicação desenvolvida seguindo os padrões do MVVM, separando o código em diferentes áreas de acordo com seu propósito.

Estrutura autal do código do projeto:

```
/lib 
|
|_/core
| |
| |_/errors
| |
| |_/network
|
|_/features
  |
  |_/product
    |
    |_/data
    | |
    | |_/datasources
    | |
    | |_/models
    | |
    | |_/repositories
    |
    |_/domain
    | |
    | |_/entities
    | |
    | |_/repositories
    |
    |_/presentation
      |
      |_/pages
      |
      |_/viewmodels
```

## Como Rodar

### Requisitos 
`` Flutter 3.35.3 `` <br>
`` Dart 3.9.2 `` <br>

Clone este repositório em um folder de seu dispositivo seguindo os segiuntes passosem um terminal: <br>
```
git clone https://github.com/gustagueimer/mobile_arquitetura_01  
``` 
entre na pasta pelo terminal com: 
```
cd mobile_arquitetura_01
```
resolva as dependências com:
```
flutter pub get
```
e inicie a applicação com:
```
flutter run -d edge --web-browser-flag="--disable-web-security"
```
assim que a aplicação terminar de carregar no navegador, aperte no botão flutuante no canto inferior esquerdo e os produtos da API devem ser carregados na tela.