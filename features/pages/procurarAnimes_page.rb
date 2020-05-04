class ProcurarAnime
    include Capybara::DSL

    def go
        visit '/anime.php'
    end

    def buscar(nome)
        barraPesquisa = find('input[id=q]')
        barraPesquisa.set nome
        find('.inputButton').click
        find('a[href^="https://myanimelist.net/anime/"]', match: :first).click
    end

    def capturar(nome)
        anime = Animes.new(nome)
        $listaAnimes = Set.new
        listaGeneros = []
        find('.borderClass', match: :first).all('a[href^="/anime/genre/"]').each do |generos|
            anime.adicionarGeneros(generos.text)
        end
        
        anime.adicionarEpisodios(find('#curEps').text)
        anime.adicionarNota(find('.score-label', match: :first).text)

        listaGeneros.push(anime)
        
        anime.mostrarAnimes

        f = File.open("listaCompleta.txt", "a") 
        f.puts(anime.retornarString)
        f.close
        
    end

end