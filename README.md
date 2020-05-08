# Myanimelist_Testes_Ruby
Implementação usando BDD de testes no site Myanimelist.net

Tecnologias utilizadas:
- Ruby
- Cucumber
- Capybara
- Rspec
- Selenium-webdriver


Projeto iniciado com o intuito de obter informações sobre os animes de um usuario e modelar estatísticas com base nesses dados.

Algumas funções já implementadas são:
- procurar um usuário no site e recuperar sua lista, salvando em um arquivo
- procurar um anime na lista e obter suas informações
- salvar em um arquivo no formato csv todos os animes da lista do usuário com todas as suas informações
  
Use `cucumber --tag @procura_usuario` na linha de comando para o primeiro caso de teste, relacionado a busca pela lista do usuario.

```gherkin
 @procura_usuario
    Esquema do Cenário: Busca
        Quando eu procuro o usuario <usuario> na barra de pesquisa
        E escolho o usuario <usuario> na lista
        E escolho a opção "anime completed" no perfil
        E salvo a lista de animes em um array para exibir no terminal <usuario>
        Entao devo ver <usuario> "'s Anime List - MyAnimeList.net" no titulo da pagina
        Exemplos:
            | usuario  |
            | "igoros"  |
```            

Use `cucumber --tag @procura_anime` na linha de comando para o segundo caso de teste, relacionado a busca por informações dos animes na lista.

```gherkin
 @procura_anime
    Esquema do Cenário: Analisar anime
        Quando eu visito a pagina de pesquisa de anime
        E digito o nome do anime <anime>
        Então devo capturar as informações do <anime>
        Exemplos:
            | anime |
            | "12-sai.: Chicchana Mune no Tokimeki" |
            | "Ajin" |
            | "Akagami no Shirayuki-hime" |
            | "Akagami no Shirayuki-hime 2nd Season" |
            | "Akame ga Kill!" |'
```
 


Obs: o webdriver precisa estar como uma variavel de ambiente.




