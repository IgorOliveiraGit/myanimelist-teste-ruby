class ProcurarAnime
    include Capybara::DSL

    def go
        visit '/anime.php'
    end

    def buscar(nome)
        barraPesquisa = find('input[id=q]')
        barraPesquisa.set nome
        find('.inputButton').click
        nome = nome.tr!(" ", "_")
        puts nome
        find("a[href$=" + nome + "]", match: :first).click
    end

    def capturar(nome)
        anime = Animes.new(nome)
        all('a[href^="/anime/genre/"]').each do |generos|
           anime.adicionarGeneros(generos.text)
        end
        anime.adicionarEpisodios(find('#curEps').text)
        anime.adicionarNota(find('.score-label', match: :first).text)
        anime.mostrarAnimes
    end

end