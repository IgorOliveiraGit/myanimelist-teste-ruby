#language: pt

Funcionalidade: Acessar lista

    # Cenário: Acessar lista
    # Dado que eu acesso o site da lista
    # Entao eu vejo o titulo da pagina

    Esquema do Cenário: Busca
        Quando eu procuro o usuario <usuario> na barra de pesquisa
        E escolho o usuario <usuario> na lista
        E escolho a opção "anime completed" no perfil
        E salvo a lista de animes em um array para exibir no terminal <usuario>
        Entao devo ver <usuario> "'s Anime List - MyAnimeList.net" no titulo da pagina

        Exemplos:
            | usuario  |
            | "igoros" |
            | "Ekank"  |

    Cenário: Gerar tabela
        
     