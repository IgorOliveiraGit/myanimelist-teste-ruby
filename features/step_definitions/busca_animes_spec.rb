Quando("eu visito a pagina de pesquisa de anime") do
    @procurarAnime.go
  end
  
  Quando("digito o nome do anime {string}") do |nome|
    @procurarAnime.buscar(nome)
  end
  
  Então("devo capturar as informações do {string}") do |nome|
    @procurarAnime.capturar(nome)
  end