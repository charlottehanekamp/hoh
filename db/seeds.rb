# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

u1 = User.create!(email:'charlie.5991@gmail.com', password: 'password', password_confirmation: 'password',
    first_name:'Charlotte', last_name:'Hanekamp', user_type: 0,
    avatar: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'assets', 'img', '12107712_898803356868321_4916923459866462126_n.jpg'))
)
u2 = User.create!(email:'claire@test.nl', password: 'password', password_confirmation: 'password',
    first_name:'Claire', last_name:'Hagen', user_type: 1, functie: 0,
    avatar: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'assets', 'img', '1509822_10203295280207746_396486274_n.jpg')),
    content:
      'Here it goes: I sped. I followed too closely. I ran a stop sign. I almost hit a Chevy. I sped some more. I failed to yield at a crosswalk. I changed lanes at an intersection. I changed lanes without signaling while running a red light and SPEEDING!
      Here it goes: I sped. I followed too closely. I ran a stop sign. I almost hit a Chevy. I sped some more. I failed to yield at a crosswalk. I changed lanes at an intersection. I changed lanes without signaling while running a red light and SPEEDING!
      Nothing! Because if I take it to small claims court, it will just drain eight hours out of my life and you probably wont show up and even if I got the judgment youd just stiff me anyway; so what I am going to do is piss and moan like an impotent jerk, and then '
)
u3 = User.create!(email:'janneke@test.nl', password: 'password', password_confirmation: 'password',
    first_name:'Janneke', last_name:'Rotman', user_type: 1, functie: 2,
    avatar: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'assets', 'img', '1898001_10203086875597761_1013105488_n.jpg')),
    content:
      'Here it goes: I sped. I followed too closely. I ran a stop sign. I almost hit a Chevy. I sped some more. I failed to yield at a crosswalk. I changed lanes at an intersection. I changed lanes without signaling while running a red light and SPEEDING!
      Here it goes: I sped. I followed too closely. I ran a stop sign. I almost hit a Chevy. I sped some more. I failed to yield at a crosswalk. I changed lanes at an intersection. I changed lanes without signaling while running a red light and SPEEDING!
      Nothing! Because if I take it to small claims court, it will just drain eight hours out of my life and you probably wont show up and even if I got the judgment youd just stiff me anyway; so what I am going to do is piss and moan like an impotent jerk, and then '
)
u4 = User.create!(email:'kevin@test.nl', password: 'password', password_confirmation: 'password',
    first_name:'Kevin', user_type: 0,
    avatar: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'assets', 'img', 'kevin.jpg')),
    content:
      'Ik ben Kevin uit Sassenheim en ben het jongste lid van de vereniging.
      Ik houd van paardrijden en boogschieten (te paard) en ik vind het heel erg leuk als we op het weiland gaan schieten.
      Mijn team is een gezellige groep en ik word ook erg geholpen door iedereen.
      Mijn hobby’s zijn: scouting, buitenspelen en knutselen en boogschieten.'
)
u5 = User.create!(email:'dorit@test.nl', password: 'password', password_confirmation: 'password',
    first_name:'Dorit', user_type: 0)


Blog.create(title:'1',
    image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'assets', 'img', '1509822_10203295280207746_396486274_n.jpg')),
    body:
        'Well dreams, they feel real while were in them, right? Its only when we wake up that we realize how things are actually strange. Let me ask you a question, you, you never really remember the beginning of a dream do you? You always wind up right in the middle of whats going on.
        Frank, how many of these guys have been with you long enough to be disgruntled, huh? Think about it. You dont pay much, you know. Its almost a fuckin feudal enterprise. The question is, and this is the only question, who thinks that they can do what you do better than you?
        You know what? I am thinking straight. Youre not, all right? You cant, because youre a million fucking miles away. Im here, Ed, every day. And I see the unnecessary travesties of this war... that the rest of you backstabbing political fucking bureaucrats... only look at pictures of. So dont you dare tell me I am not thinking straight! This is not working, all right? Its not working, Im out.
        Trust me, its paradise. This is where the hungry come to feed. For mine is a generation that circles the globe and searches for something we havent tried before. So never refuse an invitation, never resist the unfamiliar, never fail to be polite and never outstay the welcome. Just keep your mind open and suck in the experience. And if it hurts, you know what? Its probably worth it.
        I wish. I wish more than anything. But I cant imagine you with all your complexity, all you perfection, all your imperfection. Look at you. You are just a shade of my real wife. Youre the best I can do; but Im sorry, you are just not good enough.')
Blog.create(title:'2',
    body:
        'Here it goes: I sped. I followed too closely. I ran a stop sign. I almost hit a Chevy. I sped some more. I failed to yield at a crosswalk. I changed lanes at an intersection. I changed lanes without signaling while running a red light and SPEEDING!
        Here it goes: I sped. I followed too closely. I ran a stop sign. I almost hit a Chevy. I sped some more. I failed to yield at a crosswalk. I changed lanes at an intersection. I changed lanes without signaling while running a red light and SPEEDING!
        Nothing! Because if I take it to small claims court, it will just drain eight hours out of my life and you probably wont show up and even if I got the judgment youd just stiff me anyway; so what I am going to do is piss and moan like an impotent jerk, and then bend over and take it up the tailpipe!
        Simmons is old. He shouldve been out of the game years ago but he cant stay home because he hates his wife. Youve met her at the Christmas parties, shes the one that gets plastered and calls him a retard, and you, Tom; youre the biggest brownnose Ive ever seen. Youve got your head so far up Mr. Allens ass, I cant tell where you end and he begins. [...] You have bad breath caused by gingivitis. You couldnt get a porn star off. Your hairpiece looks like something that was killed crossing the highway. I dont know whether to comb it or scrape it off with a shovel and bury it in lime. Loser! Idiot! Wimp! Degenerate! SLUUUUUUUTTT!
        All that I ask is that you do every little thing that pops into my head, while I enjoy the enormous fortune your parents left behind.')
Blog.create(title:'3',
    body:
        'The way your dad looked at it, this watch was your birthright. Hed be damned if any of the slopes were gonna get their greasy yellow hands on his boys birthright. So he hid it in the one place he knew he could hide something: his ass. Five long years, he wore this watch up his ass. Then when he died of dysentery, he gave me the watch. I hid this uncomfortable piece of metal up my ass for two years. Then, after seven years, I was sent home to my family. And now, little man, I give the watch to you.
        You been with a woman, Zophael? Its like dying... you moan, cry out. You get to a spot that has you begging for release. Once, I was an Angel of Death... now, I die every day... when I have the cash.
        Lets understand each other. I sang the first hymn when the stars were born. Not that long ago, I announced to a young woman, Mary, who it was she was expecting. On the other hand, Ive turned rivers into blood. Kings into cripples. Cities to salt. So, I dont think that I have to explain myself to you.
        Im an angel. I kill firstborns while their mamas watch. I turn cities into salt. I even, when I feel like it, rip the souls from little girls, and from now till kingdom come, the only thing you can count on in your existence is never understanding why.
        Women. Nothing surprises me Chip, except your late mother. Whoda thought Selina had a brain to damage. Bottom line, she tries to blackmail me, Ill drop her out a higher window. Meantime, I got better fish to fry.')
Blog.create(title:'4',
    body:
        'See, the sad thing about a guy like you is, in 50 years you\'re gonna start doin\' some thinkin\' on your own and you\'re going to come up with the fact that there are two certainties in life: one, don\'t do that, and two, you dropped 150 grand on a fuckin\' education you could have got for a dollar fifty in late charges at the public library!
        "Wood drastically underestimates the impact of social distinctions predicated upon wealth, especially inherited wealth"? You got that from Vickers\' "Work in Essex County," page 98, right? Yeah, I read that too. Were you gonna plagiarize the whole thing for us? Do you have any thoughts of your own on this matter? Or do you, is that your thing, you come into a bar, read some obscure passage and then pretend - you pawn it off as your own, as your own idea just to impress some girls, embarrass my friend?
        But what do you need a financial advisor for? Twenty years ago you had the highest Gross National Product in the world, now you\'re tied with Albania. Your second largest export is secondhand goods, closely followed by dates which you\'re losing five cents a pound on... You know what the business community thinks of you? They think that a hundred years ago you were living in tents out here in the desert chopping each other\'s heads off and that\'s where you\'ll be in another hundred years, so, yes, on behalf of my firm I accept your money.
        Why shouldn\'t I work for the N.S.A.? That\'s a tough one, but I\'ll take a shot. Say I\'m working at N.S.A. Somebody puts a code on my desk, something nobody else can break. Maybe I take a shot at it and maybe I break it. And I\'m real happy with myself, \'cause I did my job well. But maybe that code was the location of some rebel army in North Africa or the Middle East. Once they have that location, they bomb the village where the rebels were hiding and fifteen hundred people I never met, never had no problem with, get killed. Now the politicians are sayin\', "Oh, send in the Marines to secure the area" \'cause they don\'t give a shit. It won\'t be their kid over there, gettin\' shot. Just like it wasn\'t them when their number got called, \'cause they were pullin\' a tour in the National Guard. It\'ll be some kid from Southie takin\' shrapnel in the ass. And he comes back to find that the plant he used to work at got exported to the country he just got back from. And the guy who put the shrapnel in his ass got his old job, \'cause he\'ll work for fifteen cents a day and no bathroom breaks. Meanwhile, he realizes the only reason he was over there in the first place was so we could install a government that would sell us oil at a good price. And, of course, the oil companies used the skirmish over there to scare up domestic oil prices. A cute little ancillary benefit for them, but it ain\'t helping my buddy at two-fifty a gallon. And they\'re takin\' their sweet time bringin\' the oil back, of course, and maybe even took the liberty of hiring an alcoholic skipper who likes to drink martinis and fuckin\' play slalom with the icebergs, and it ain\'t too long \'til he hits one, spills the oil and kills all the sea life in the North Atlantic. So now my buddy\'s out of work and he can\'t afford to drive, so he\'s got to walk to the fuckin\' job interviews, which sucks \'cause the shrapnel in his ass is givin\' him chronic hemorrhoids. And meanwhile he\'s starvin\', \'cause every time he tries to get a bite to eat, the only blue plate special they\'re servin\' is North Atlantic scrod with Quaker State. So what did I think? I\'m holdin\' out for somethin\' better. I figure fuck it, while I\'m at it why not just shoot my buddy, take his job, give it to his sworn enemy, hike up gas prices, bomb a village, club a baby seal, hit the hash pipe and join the National Guard? I could be elected president.
    I can tell you the license plate numbers of all six cars outside. I can tell you that our waitress is left-handed and the guy sitting up at the counter weighs two hundred fifteen pounds and knows how to handle himself. I know the best place to look for a gun is the cab or the gray truck outside, and at this altitude, I can run flat out for a half mile before my hands start shaking. Now why would I know that? How can I know that and not know who I am?')
Blog.create(title:'5',
    body:
        'You been with a woman, Zophael? It\'s like dying... you moan, cry out. You get to a spot that has you begging for release. Once, I was an Angel of Death... now, I die every day... when I have the cash.
        Let\'s understand each other. I sang the first hymn when the stars were born. Not that long ago, I announced to a young woman, Mary, who it was she was expecting. On the other hand, I\'ve turned rivers into blood. Kings into cripples. Cities to salt. So, I don\'t think that I have to explain myself to you.
        A man can be an artist... in anything, food, whatever. It depends on how good he is at it. Creasey\'s art is death. He\'s about to paint his masterpiece.
        I\'m an angel. I kill firstborns while their mamas watch. I turn cities into salt. I even, when I feel like it, rip the souls from little girls, and from now till kingdom come, the only thing you can count on in your existence is never understanding why.
        She\'s some bunny isn\'t she? Great to see her again, It\'s been years, but,I never forget a face... especially, if I\'ve sat on it. I hope you have the fun with her that I do... I love that little mole on her butt don\'t you? and how about that sensitive left nipple... and what mouth action! I thought jaws only moved that fast in water! You know Lou-Anne, likes to make a guy happy. More than you do for her Marco! But then, you have a problem don\'t you? It\'s called... LIMP DICK. And Lou-Anne is losing patience. Yeah me and Lou- Anne, Lou- Anne and me, we just pump away... singing that song we love... feelings!... nothing more than feelings!')

Agenda.create(title: 'Training', start_at: '2016-03-13 08:30:00.000000', end_at: '2016-03-13 15:00:00.000000', content: 'Zondag is er een training te voet en te paard. Verzamelen 9:30. 10:00 beginnen')


LadderCompetitie.create(user: u8, u_arrows_shot: 6, u_five: 1, u_four: 0, u_three: 5, u_two: 0, u_one: 0, shot_at: Date.current,
                shot_against: u9, sa_arrows_shot: 6, sa_five: 0, sa_four: 0, sa_three: 6, sa_two: 0, sa_one: 0)

LadderCompetitie.create(user: u8, u_arrows_shot: 10, u_five: 4, u_four: 0, u_three: 1, u_two: 4, u_one: 1, shot_at: Date.current,
                shot_against: u5, sa_arrows_shot: 12, sa_five: 3, sa_four: 1, sa_three: 2, sa_two: 6, sa_one: 0)

LadderCompetitie.create(user: u5, u_arrows_shot: 12, u_five: 4, u_four: 1, u_three: 2, u_two: 1, u_one: 3, shot_at: Date.current,
                shot_against: u3, sa_arrows_shot: 10, sa_five: 3, sa_four: 1, sa_three: 2, sa_two: 3, sa_one: 1)

LadderCompetitie.create(user: u5, u_arrows_shot: 10, u_five: 2, u_four: 2, u_three: 2, u_two: 2, u_one: 2, shot_at: Date.current,
                shot_against: u1, sa_arrows_shot: 12, sa_five: 1, sa_four: 3, sa_three: 7, sa_two: 1, sa_one: 0)


DefaultText.create(title: 'Horsebackarchers of Holland', page: 'index',
    image: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'assets', 'img', 'hoh_logo.png')),
    content_one:'
        In volle galop, over de steppen van Mongolie, raasden de paarden en hun ruiters voort, de wind wapperend in hun manen en haren, boog in de hand, klaar om te schieten op de vijand. Op deze manier is bijna de halve wereld veroverd onder leiding van Djengis Khan, de meest beruchte van alle horsebackarchers. Ook gebruikte men de boog te paard tijdens de jacht. Oftewel: boogschieten te paard is heel normaal geweest en een groot voordeel voor de mens die dit beheerste.
        Tegenwoordig is het zo normaal niet meer. Eigenlijk is deze krijgskunst en de kennis daaromtrent geheel verloren gegaan. Het was zo normaal, dat vele technieken niet gedocumenteerd zijn, maar van generatie op generatie over werden gegeven.
        Sinds de jaren \'80 van de vorige eeuw is er een opleving gekomen. Her en der waren nog wel wat mensen die deze kunst beoefenden, en de Hongaar Lajos Kassai heeft na veel onderzoek en praktijkervaring langzamerhand een solide sportsysteem ontwikkeld en heeft er veel aan gedaan om dit meer bekendheid te geven. Dit is heel langzaam gegaan, de Mongolen waren waarschijnlijk sneller met het veroveren :P, want pas de afgelopen jaren begint de sport echt te groeien.',
    content_two:'
        In Nederland was er eerst een klein groepje mensen, nog totaal onwetend van het systeem van Kassai of anderen, onder leiding van Ronald van der Velden, die Yoseikan Bajutsu beoefenden: Japanse krijgskunst te paard. Dit omvatte onder andere het boogschieten te paard, maar ook speerwerpen, lanssteken, zwaardvechten, rollen, vallen, grepen en bevrijdingen. Omdat het zoveel verschillende onderdelen bevatte, was het moeilijk om alles goed onder de knie te krijgen. Toen Ronald stopte, nam Claire Hagen, als langst deelnemende leerling, het stokje over. Niet lang daarna kreeg ze in de gaten dat het boogschieten te paard internationaal steeds meer bekendheid kreeg, en besloot ze om zich alleen daarop te concentreren, omdat dat ook al drie levens kost om goed te kunnen. ;) ',
    content_three:'
        Door de specificatie van het wapen, kwamen er ook steeds meer geinteresseerden. Inmiddels is de groep gegroeid tot een vaste kern van 10 personen. Daarnaast zijn er mensen die minder regelmatig komen trainen of alleen te voet meedoen. De kernploeg is zeer fanatiek en enthousiast en traint ongeveer 1x in de 2 weken. Dit kan alleen te voet zijn, of ook te paard.
        Het is heel belangrijk om eerst de techniek te voet te beheersen die je nodig hebt voor het schieten vanaf het paard. Op het moment dat je op het paard zit, moet je zoveel dingen tegelijk doen, dat het goed is om zowel het boogschieten als het paardrijden bijna automatisch te kunnen uitvoeren. Deze beide activiteiten moeten dus in je spiergeheugen zitten. Dat betekent dat het een groot voordeel is wanneer je kunt paardrijden en boogschieten, maar het is zeker geen must. Niet-ruiters kunnen aan de hand worden begeleid in stap, of ze gaan aan de voorgenoemde longe, waardoor ze zich nog niet druk hoeven te maken over richting of tempo. Niet-schutters krijgen eerst training te voet, zodat er veilig vanaf het paard geschoten kan worden, alle trainingen beginnen met een voetgedeelte. De schiettechniek richt zich op het snel en blind nokken (pijl op de pees van de boog krijgen) en hier doen wij vele oefeningen voor.',
    content_four:'
        In onze zoektocht naar verbetering zijn we een samenwerking aangegaan met de Nemethy Horseback Archery Academy in Hongarije. Zij hebben getraind onder Lajos Kassai en hun systeem lijkt daarop. Jaarlijks halen we Christoph Nemethy, tweevoudig Europees kampioen, een weekend naar Nederland voor een intensieve training en ook gaan we met een groep elk jaar naar Hongarije, voor een week lang training. Daarnaast zijn er kontakten met de International Horseback Archery Alliance. Deze heeft een mooi gradensysteem opgezet en houdt postal competities, waaraan we zoveel mogelijk proberen deel te nemen. Verdere internationale contacten zijn er met de World Horseback Archery Foundation, de Steppenreiter, de British Horseback Archery Association, Boureider Lëtzebuerg en nog vele andere verenigingen.')

Rate.create(title: 'Te Voet 13x', description: '', price: '60', expires_in: 24)
Rate.create(title: 'Te Voet 6x', description: '', price: '30', expires_in: 12)
Rate.create(title: 'Te Voet 1x', description: '', price: '7.50', expires_in: 0)
Rate.create(title: 'Te Paard 1x', description: '', price: '40', expires_in: 0)
Rate.create(title: 'Materiaal', description: 'halve dag', price: '2.5', expires_in: 0)
