Dado("que eu acesso o site da lista") do
 visit ''
end

Entao("eu vejo o titulo da pagina") do
    expect(page.title).to eql "MyAnimeList.net - Anime and Manga Database and Community"
end