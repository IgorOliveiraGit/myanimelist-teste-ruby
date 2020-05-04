class Animes
    include Capybara::DSL

    attr_accessor :nome
    
   

    def initialize(nome)
        @nome = nome
        @generos = Array.new
    end

    def adicionarGeneros(genero)
        @generos.push(genero)
    end

    def adicionarEpisodios(episodios)
        @episodios = episodios
    end

    def adicionarNota(nota)
        @nota = nota
    end

    def mostrarAnimes
        puts "Nome: " + @nome
        puts "Gêneros: " + @generos.join(",")
        puts "Episódios: " + @episodios
        puts "Nota: " + @nota
    end

    def resetar
        @generos.clear
    end


    def retornarString
        @nome + "," + "[" + @generos.join(",") + "]" + "," + @episodios + "," + @nota  
    end

    
end