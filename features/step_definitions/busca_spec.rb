Quando("eu procuro o usuario {string} na barra de pesquisa") do |nome|
    @login.go
    @login.with(nome)
end

E("escolho o usuario {string} na lista") do |nome|
   @login.selecionarUsuario(nome)
end

E("escolho a opção {string} no perfil") do |lista|
    @login.selecionarLista(lista)
end

E("salvo a lista de animes em um array para exibir no terminal {string}") do |nome|
    @login.salvarLista(nome)
end


Entao("devo ver {string} {string} no titulo da pagina") do |nome, titulo|
    tituloFinal = nome + titulo
    expect(page.title).to eql tituloFinal
end

