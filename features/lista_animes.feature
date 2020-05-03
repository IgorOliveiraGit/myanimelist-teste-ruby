#language: pt

Funcionalidade: Acessar lista

    # Cenário: Acessar lista
    # Dado que eu acesso o site da lista
    # Entao eu vejo o titulo da pagina
    @procura_usuario
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

    @procura_anime
    Esquema do Cenário: Analisar anime
        Quando eu visito a pagina de pesquisa de anime
        E digito o nome do anime <anime>
        Então devo capturar as informações do <anime>

        Exemplos:
            | anime |
            | "12-sai.: Chicchana Mune no Tokimeki" |
            | "Ajin" |
            | "Akagami no Shirayuki-hime" |
            | "Akagami no Shirayuki-hime 2nd Season" |
            | "Akame ga Kill!" |
            | "Akatsuki no Yona" |
            | "Amaama to Inazuma" |
            | "Amagami SS" |
            | "Angel Beats!" |
            | "Ano Hi Mita Hana no Namae wo Bokutachi wa Mada Shiranai." |
            | "Ano Hi Mita Hana no Namae wo Bokutachi wa Mada Shiranai. Movie" |
            | "Ano Natsu de Matteru" |
            | "Another" |
            | "Ao Haru Ride" |
            | "Ao Haru Ride OVA" |
            | "Ao no Exorcist" |
            | "Araburu Kisetsu no Otome-domo yo." |
            | "Bakemonogatari" |
            | "Boku dake ga Inai Machi" |
            | "Boku no Hero Academia" |
            | "Boku no Hero Academia 2nd Season" |
            | "Boku no Hero Academia 3rd Season" |
            | "Boku no Hero Academia 4th Season" |
            | "Boku wa Tomodachi ga Sukunai" |
            | "Boku wa Tomodachi ga Sukunai Next" |
            | "Bokusatsu Tenshi Dokuro-chan" |
            | "Bokusatsu Tenshi Dokuro-chan 2" |
            | "Btooom!" |
            | "Byousoku 5 Centimeter" |
            | "Centaur no Nayami" |
            | "Charlotte" |
            | "Chihayafuru" |
            | "Chihayafuru 2" |
            | "Chobits" |
            | "Chuunibyou demo Koi ga Shitai!" |
            | "Chuunibyou demo Koi ga Shitai! Ren" |
            | "Clannad" |
            | "Clannad: After Story" |
            | "Clannad: After Story - Mou Hitotsu no Sekai, Kyou-hen" |
            | "Clannad: Mou Hitotsu no Sekai, Tomoyo-hen" |
            | "Code Geass: Hangyaku no Lelouch" |
            | "Corpse Party: Tortured Souls - Bougyakusareta Tamashii no Jukyou" |
            | "Cross Road" |
            | "Dagashi Kashi" |
            | "Danganronpa: Kibou no Gakuen to Zetsubou no Koukousei The Animation" |
            | "Darling in the FranXX" |
            | "Date A Live" |
            | "Date A Live II" |
            | "Date A Live: Date to Date" |
            | "Death Note" |
            | "Death Parade" |
            | "Devilman: Crybaby" |
            | "Dragon Ball" |
            | "Dragon Ball GT" |
            | "Dragon Ball Super" |
            | "Dragon Ball Z" |
            | "Drifters" |
            | "Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka" |
            | "Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka II" |
            | "Elfen Lied" |
            | "Eromanga-sensei" |
            | "Eve no Jikan (Movie)" |
            | "Fate/stay night" |
            | "Fate/stay night: Unlimited Blade Works" |
            | "Fate/stay night: Unlimited Blade Works 2nd Season" |
            | "Fate/Zero" |
            | "Fate/Zero 2nd Season" |
            | "Fullmetal Alchemist: Brotherhood" |
            | "Fune wo Amu" |
            | "Fuuka" |
            | "Gamers!" |
            | "Gate: Jieitai Kanochi nite, Kaku Tatakaeri" |
            | "Gate: Jieitai Kanochi nite, Kaku Tatakaeri 2nd Season" |
            | "Gekkan Shoujo Nozaki-kun" |
            | "Golden Time" |
            | "Great Teacher Onizuka" |
            | "Grisaia no Kajitsu" |
            | "Grisaia no Rakuen" |
            | "Gugure! Kokkuri-san" |
            | "Hai to Gensou no Grimgar" |
            | "Haikyuu!!" |
            | "Haikyuu!! Second Season" |
            | "Haikyuu!!: Karasuno Koukou vs. Shiratorizawa Gakuen Koukou" |
            | "Haikyuu!!: To the Top" |
            | "Hajimete no Gal" |
            | "Hal" |
            | "Hanamonogatari" |
            | "Hanebado!" |
            | "Hataraku Maou-sama!" |
            | "Hataraku Saibou (TV)" |
            | "Hentai Ouji to Warawanai Neko." |
            | "Hibike! Euphonium" |
            | "High School DxD" |
            | "High Score Girl" |
            | "Highschool of the Dead" |
            | "Highschool of the Dead: Drifters of the Dead" |
            | "Hitsugi no Chaika" |
            | "Hitsugi no Chaika: Avenging Battle" |
            | "Hotarubi no Mori e" |
            | "Hyouka" |
            | "Hyouka: Motsubeki Mono wa" |
            | "Isekai Quartet" |
            | "Isekai Quartet 2" |
            | "Isekai Shokudou" |
            | "Isekai wa Smartphone to Tomo ni." |
            | "Itai no wa Iya nano de Bougyoryoku ni Kyokufuri Shitai to Omoimasu." |
            | "JoJo no Kimyou na Bouken (TV)" |
            | "K-On!" |
            | "Kaguya-hime no Monogatari" |
            | "Kaguya-sama wa Kokurasetai: Tensai-tachi no Renai Zunousen" |
            | "Kaichou wa Maid-sama!" |
            | "Kakegurui" |
            | "Kakegurui××" |
            | "Kami nomi zo Shiru Sekai" |
            | "Kami nomi zo Shiru Sekai II" |
            | "Kami nomi zo Shiru Sekai: Megami-hen" |
            | "Kamisama Hajimemashita" |
            | "Kamisama Hajimemashita◎" |
            | "Kanojo to Kanojo no Neko: Everything Flows" |
            | "Kanon (2006)" |
            | "Kaze Tachinu" |
            | "Keijo!!!!!!!!" |
            | "Kill la Kill" |
            | "Kimetsu no Yaiba" |
            | "Kimi ni Todoke" |
            | "Kimi ni Todoke 2nd Season" |
            | "Kimi no Iru Machi" |
            | "Kimi no Na wa." |
            | "Kimi no Suizou wo Tabetai" |
            | "Kishuku Gakkou no Juliet" |
            | "Kiss x Sis (TV)" |
            | "Kizumonogatari I: Tekketsu-hen" |
            | "Kobayashi-san Chi no Maid Dragon" |
            | "Koe no Katachi" |
            | "Koi to Uso" |
            | "Koi wa Ameagari no You ni" |
            | "Kokoro Connect" |
            | "Kokoro Connect: Michi Random" |
            | "Kokoro ga Sakebitagatterunda." |
            | "Kono Naka ni Hitori, Imouto ga Iru!" |
            | "Kono Naka ni Hitori, Imouto ga Iru!: Ani, Imouto, Koibito" |
            | "Kono Subarashii Sekai ni Shukufuku wo!" |
            | "Kono Subarashii Sekai ni Shukufuku wo! 2" |
            | "Kore wa Zombie Desu ka?" |
            | "Kotonoha no Niwa" |
            | "Koukaku Kidoutai" |
            | "Koutetsujou no Kabaneri" |
            | "Kumo no Mukou, Yakusoku no Basho" |
            | "Kuzu no Honkai" |
            | "Kyoukai no Kanata" |
            | "Log Horizon" |
            | "Log Horizon 2nd Season" |
            | "Love Live! School Idol Project" |
            | "Love Live! School Idol Project 2nd Season" |
            | "Love Live! Sunshine!!" |
            | "Love Live! Sunshine!! 2nd Season" |
            | "Love Live! The School Idol Movie" |
            | "Lovely★Complex" |
            | "Mahou Shoujo Madoka★Magica" |
            | "Mahou Shoujo Madoka★Magica Movie 3: Hangyaku no Monogatari" |
            | "Mahouka Koukou no Rettousei" |
            | "Mahoutsukai no Yome: Hoshi Matsu Hito" |
            | "Mary to Majo no Hana" |
            | "Masamune-kun no Revenge" |
            | "Mashiro-iro Symphony: The Color of Lovers" |
            | "Mirai Nikki" |
            | "Mirai Nikki: Redial" |
            | "Monogatari Series: Second Season" |
            | "Mononoke Hime" |
            | "Monster Musume no Iru Nichijou" |
            | "Nagi no Asu kara" |
            | "Nana" |
            | "Nanatsu no Taizai" |
            | "Nanatsu no Taizai: Seisen no Shirushi" |
            | "Nazo no Kanojo X" |
            | "Nekomonogatari: Kuro" |
            | "Neon Genesis Evangelion" |
            | "Net-juu no Susume" |
            | "Netoge no Yome wa Onnanoko ja Nai to Omotta?" |
            | "NHK ni Youkoso!" |
            | "Nichijou" |
            | "Nijiiro Days" |
            | "Nisekoi" |
            | "Nisekoi:" |
            | "Nisemonogatari" |
            | "No Game No Life" |
            | "Nodame Cantabile" |
            | "Nodame Cantabile: Finale" |
            | "Nodame Cantabile: Paris-hen" |
            | "Non Non Biyori" |
            | "Non Non Biyori Repeat" |
            | "Noragami" |
            | "Noragami Aragoto" |
            | "Okusama ga Seitokaichou!" |
            | "Omoide no Marnie" |
            | "One Punch Man" |
            | "One Room" |
            | "Onegai☆Teacher" |
            | "Ookami Kodomo no Ame to Yuki" |
            | "Ookami Shoujo to Kuro Ouji" |
            | "Ookami to Koushinryou" |
            | "Ookami to Koushinryou II" |
            | "Ookami to Koushinryou II: Ookami to Kohakuiro no Yuuutsu" |
            | "Orange" |
            | "Ore no Kanojo to Osananajimi ga Shuraba Sugiru" |
            | "Ore no Nounai Sentakushi ga, Gakuen Love Comedy wo Zenryoku de Jama Shiteiru" |
            | "Ore wo Suki nano wa Omae dake ka yo" |
            | "Overlord" |
            | "Overlord II" |
            | "Owarimonogatari" |
            | "Plastic Memories" |
            | "Psycho-Pass" |
            | "Quanzhi Gaoshou" |
            | "Rakudai Kishi no Cavalry" |
            | "Re:Zero kara Hajimeru Isekai Seikatsu" |
            | "Rec" |
            | "Rec: Yurusarezarumono" |
            | "ReLIFE" |
            | "ReLIFE: Kanketsu-hen" |
            | "Renai Boukun" |
            | "Rokudenashi Majutsu Koushi to Akashic Records" |
            | "Rokujouma no Shinryakusha!? (TV)" |
            | "Saenai Heroine no Sodatekata" |
            | "Saenai Heroine no Sodatekata ♭" |
            | "Saijaku Muhai no Bahamut" |
            | "Saint Seiya" |
            | "Saint Seiya: Meiou Hades Elysion-hen" |
            | "Saint Seiya: Meiou Hades Juuni Kyuu-hen" |
            | "Saint Seiya: Meiou Hades Meikai-hen" |
            | "Saint Seiya: Tenkai-hen Josou - Overture" |
            | "Saint Seiya: The Lost Canvas - Meiou Shinwa" |
            | "Sakasama no Patema" |
            | "Sakura-sou no Pet na Kanojo" |
            | "Sankarea" |
            | "Seiren" |
            | "Seishun Buta Yarou wa Bunny Girl Senpai no Yume wo Minai" |
            | "Sen to Chihiro no Kamikakushi" |
            | "Shigatsu wa Kimi no Uso" |
            | "Shimoneta to Iu Gainen ga Sonzai Shinai Taikutsu na Sekai" |
            | "Shingeki no Kyojin" |
            | "Shingeki no Kyojin Season 2" |
            | "Shingeki no Kyojin Season 3" |
            | "Shingeki no Kyojin Season 3 Part 2" |
            | "Shinsekai yori" |
            | "Shirobako" |
            | "Shokugeki no Souma" |
            | "Shokugeki no Souma: Ni no Sara" |
            | "Shokugeki no Souma: San no Sara" |
            | "Shokugeki no Souma: San no Sara - Tootsuki Ressha-hen" |
            | "Shuumatsu Nani Shitemasu ka? Isogashii Desu ka? Sukutte Moratte Ii Desu ka?" |
            | "Sora yori mo Tooi Basho" |
            | "Soredemo Sekai wa Utsukushii" |
            | "Steins;Gate" |
            | "Sukitte Ii na yo." |
            | "Suzumiya Haruhi no Shoushitsu" |
            | "Suzumiya Haruhi no Yuuutsu" |
            | "Suzumiya Haruhi no Yuuutsu (2009)" |
            | "Sword Art Online" |
            | "Sword Art Online Alternative: Gun Gale Online" |
            | "Sword Art Online II" |
            | "Sword Art Online Movie: Ordinal Scale" |
            | "Sword Art Online: Alicization" |
            | "Sword Art Online: Alicization - War of Underworld" |
            | "Sword Art Online: Alicization - War of Underworld Reflection" |
            | "Tamako Love Story" |
            | "Tamako Market" |
            | "Tasogare Otome x Amnesia" |
            | "Tengen Toppa Gurren Lagann" |
            | "Toki wo Kakeru Shoujo" |
            | "Tokyo Ghoul" |
            | "Tokyo Ghoul √A" |
            | "Tonari no Kaibutsu-kun" |
            | "Tonari no Totoro" |
            | "Toradora!" |
            | "Tsuki ga Kirei" |
            | "Tsukimonogatari" |
            | "Tsuujou Kougeki ga Zentai Kougeki de Ni-kai Kougeki no Okaasan wa Suki Desu ka?" |
            | "Violet Evergarden" |
            | "Watashi ga Motenai no wa Dou Kangaetemo Omaera ga Warui!" |
            | "Watashi, Nouryoku wa Heikinchi de tte Itta yo ne!" |
            | "WWW.Working!!" |
            | "Yahari Ore no Seishun Love Comedy wa Machigatteiru." |
            | "Yahari Ore no Seishun Love Comedy wa Machigatteiru. Zoku" |
            | "Yakusoku no Neverland" |
            | "Yamada-kun to 7-nin no Majo (TV)" |
            | "Yosuga no Sora: In Solitude, Where We Are Least Alone." |
            | "Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e (TV)" |
            | "Yuri!!! on Ice" |
            | "Zero no Tsukaima" |
            | "Zero no Tsukaima F" |
            | "Zero no Tsukaima: Futatsuki no Kishi" |
            | "Zero no Tsukaima: Princesses no Rondo" |
            
     