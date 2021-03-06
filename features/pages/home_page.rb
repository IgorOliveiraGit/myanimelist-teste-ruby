class HomePage
    include Capybara::DSL
    
    def go
        visit ''
    end

    def with(name)
        find('input[id=topSearchText]').set name
        drop = find('#topSearchValue')
        drop.find('option', text: 'Users').select_option
        find('#topSearchButon').click
    end

    def selecionarUsuario(name)
        click_link(name)
    end

    def selecionarLista(lista)
        click_on(class: lista)
    end

    def salvarLista(nome)
        tabela_anime = []
        all(:css, 'td.data.title.clearfix', visible: :all).each do |anime|
           tabela_anime.push(anime.find("a.link.sort", visible: :all)[:text])
        end

        $lista1 = tabela_anime

        f = File.open("lista.txt", "a")
        f.puts("| anime |")
        f.close

        File.open("lista.txt", "a") do |f|
        tabela_anime.each{|anime| f.puts("| "+ '"' + anime + '"' + " |")}
        end
    
    end

end
