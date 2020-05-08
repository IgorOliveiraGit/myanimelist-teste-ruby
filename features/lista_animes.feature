#language: pt

Funcionalidade: Acessar lista

    # Cenário: Acessar lista
    # Dado que eu acesso o site da lista
    # Entao eu vejo o titulo da pagina
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
            | "Akame ga Kill!" |
            
            
     
