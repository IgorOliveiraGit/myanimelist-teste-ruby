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

        if nome == 'igoros' 
            $lista1 = tabela_anime
            File.open("lista.txt", "w+") do |f|
                tabela_anime.each{|anime| f.puts(anime)}
            end
        else
            $lista2 = tabela_anime
            File.open("lista2.txt", "w+") do |f|
                tabela_anime.each{|anime| f.puts(anime)}
            end
        end
    
    end

end
