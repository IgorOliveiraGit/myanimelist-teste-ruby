class Animes
    include Capybara::DSL

    attr_accessor :nome
    @@generos = []

    def initialize(nome)
        @nome = nome
    end

    def adicionarGeneros(genero)
        @@generos.push(genero)
    end

    def adicionarEpisodios(episodios)
        @episodios = episodios
    end

    def adicionarNota(nota)
        @nota = nota
    end

    def mostrarAnimes
        puts "Nome: " + @nome
        puts "Generos: " + @@generos.join(",")
        puts "Episodios: " + @episodios
        puts "Nota: " + @nota
    end

    
end