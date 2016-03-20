# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

User.create!(email:'charlie.5991@gmail.com', password: 'password', password_confirmation: 'password',
    first_name:'Charlotte', last_name:'Hanekamp', user_type: 0,
    avatar: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'includes', 'img', '12107712_898803356868321_4916923459866462126_n.jpg'))
)
User.create!(email:'claire@test.nl', password: 'password', password_confirmation: 'password',
    first_name:'Claire', last_name:'Hagen', user_type: 1, functie: 0,
    avatar: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'includes', 'img', '1509822_10203295280207746_396486274_n.jpg')),
    content:
      'Here it goes: I sped. I followed too closely. I ran a stop sign. I almost hit a Chevy. I sped some more. I failed to yield at a crosswalk. I changed lanes at an intersection. I changed lanes without signaling while running a red light and SPEEDING!
      Here it goes: I sped. I followed too closely. I ran a stop sign. I almost hit a Chevy. I sped some more. I failed to yield at a crosswalk. I changed lanes at an intersection. I changed lanes without signaling while running a red light and SPEEDING!
      Nothing! Because if I take it to small claims court, it will just drain eight hours out of my life and you probably wont show up and even if I got the judgment youd just stiff me anyway; so what I am going to do is piss and moan like an impotent jerk, and then '
)
User.create!(email:'janneke@test.nl', password: 'password', password_confirmation: 'password',
    first_name:'Janneke', last_name:'Rottman', user_type: 1, functie: 2,
    avatar: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'includes', 'img', '1898001_10203086875597761_1013105488_n.jpg')),
    content:
      'Here it goes: I sped. I followed too closely. I ran a stop sign. I almost hit a Chevy. I sped some more. I failed to yield at a crosswalk. I changed lanes at an intersection. I changed lanes without signaling while running a red light and SPEEDING!
      Here it goes: I sped. I followed too closely. I ran a stop sign. I almost hit a Chevy. I sped some more. I failed to yield at a crosswalk. I changed lanes at an intersection. I changed lanes without signaling while running a red light and SPEEDING!
      Nothing! Because if I take it to small claims court, it will just drain eight hours out of my life and you probably wont show up and even if I got the judgment youd just stiff me anyway; so what I am going to do is piss and moan like an impotent jerk, and then '
)
User.create!(email:'jose@test.nl', password: 'password', password_confirmation: 'password',
    first_name:'Jose', user_type: 0,
    avatar: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'includes', 'img', 'Jose.jpg')),
    content:
      'Mijn naam is José en ik ben 30 jaar.
      Ik rijd al sinds mijn 9e paard en ben ook gediplomeerd instructrice.
      In het verleden heb ik vooral jonge paarden gereden en mij gericht op de dressuur/springsport.
      Ik heb ook een eigen paardje; Flint.
      Het is een KWPN-ruin van nu 5 jaar.
      Nadat hij vorig jaar een blessure heeft gehad ben ik eens rond gaan kijken wat ik anders met hem kon doen en toen op Horsebackarchery gestuit.
      Ik vind de sport echt super leuk! Omdat je de controle te paard soms even moet laten gaan leer je beter naar je paard te luisteren en te communiceren.
      En de groep helpt elkaar om te verbeteren.
      Daarbij is het ook erg gezellig.
      Ook het paard vind het leuk, voor ik de gang in ga wordt hij al ongeduldig en galoppeert snel aan wanneer dit mag.
      Ik hoop dat deze sport nog flink zal groeien in Nederland en ik kan het dan ook iedereen aanbevelen!'
)
User.create!(email:'arno@test.nl', password: 'password', password_confirmation: 'password',
    first_name:'Arno', user_type: 0,
    avatar: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'includes', 'img', 'Arno.jpg')),
    content:
      'Ik ben Arno Hendriks, 32 jaar en heb 2 paarden.
      De merrie Vanilla, hartstikke geschikt voor boogschieten te paard, maar helaas met pensioen,
      en de ruin Volare, door zijn pit iets minder geschikt maar wel leuker.
      Steeds buitenritjes maken wordt na een tijd een beetje saai, maar de meeste paardensporten leken mij vooral veel gedoe en weinig plezier.
      Nadat ik een spel had gespeeld waarin mijn leger werd afgeslacht door boogschutters te paard raakte ik geïnteresseerd in de sport.
      Ik ben begonnen door op het internet filmpjes te kijken en dat uit te proberen met mijn paard Volare.
      Na veel vallen en opstaan (het niet lukken om pijlen te nokken) ben ik andere mensen gaan zoeken die dit ook deden.
      Ik vond de Horsebackarchers of Holland waar ik hartelijk werd ontvangen en inmiddels kom ik er zo\'n twee jaar met veel plezier.
      Het is een hele rit vanuit Kaatsheuvel, maar ik heb het er graag voor over.
      Het is een hecht clubje met totaal verschillende mensen die elkaar mooi aanvullen.
      Ik heb er ontzettend veel geleerd en heb er zelfs mijn vriendin José ontmoet.'
)
User.create!(email:'kevin@test.nl', password: 'password', password_confirmation: 'password',
    first_name:'Kevin', user_type: 0,
    avatar: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'includes', 'img', 'kevin.jpg')),
    content:
      'Ik ben Kevin uit Sassenheim en ben het jongste lid van de vereniging.
      Ik houd van paardrijden en boogschieten (te paard) en ik vind het heel erg leuk als we op het weiland gaan schieten.
      Mijn team is een gezellige groep en ik word ook erg geholpen door iedereen.
      Mijn hobby’s zijn: scouting, buitenspelen en knutselen en boogschieten.'
)
User.create!(email:'tamara@test.nl', password: 'password', password_confirmation: 'password',
    first_name:'Tamara', user_type: 0,
    avatar: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'includes', 'img', 'Tamara.jpg')),
    content:
      'Hoi allemaal ik ben tamara ben 30 jaar en ik doe sinds het nemethy weekend september 2013 aan boogschieten te paard.
      Waarom boogschieten te paard.
      Ik heb zelf 2 tinkers, bonita en mistie zijn geen paarden om alleen maar sport mee te rijden.
      En zelf vind ik dat ook niet leuk.
      Via een vriendin kwam ik in aanraking met de horsebackarhers of Holland.
      Het is altijd gezellig en we zijn een hechte groep vrienden.
      Ook zijn we al 2 jaar achter elkaar naar Hongarije geweest met een groep.
      Daar heb ik echt heel veel geleerd en is een super leuke ervaring.
      Ik hoop dat ik nog lang kan genieten van deze sport en dat het steeds meer gaat groeien in Nederland.
      Ik hoop jullie te zien bij 1 van de trainingen.

      Gr tamara.'
)
User.create!(email:'yssette@test.nl', password: 'password', password_confirmation: 'password',
    first_name:'Yssette', user_type: 0,
    avatar: Rack::Test::UploadedFile.new(File.join(Rails.root, 'public', 'includes', 'img', 'Yssette.jpg')),
    content:
      'Mijn naam is Yssette.
      Ik ben ooit begonnen als eerste onofficiele jeugdlid van de horsebackarchers.
      Ik draai al mee sinds 6 juni 2010 en ben nooit meer gestopt.
      Ik vind het boogschieten te paard leuk, omdat ik een teamgevoel krijg.
      Het loslaten en vertrouwen op het paard is daar ook onderdeel van en kan soms heel spannend zijn.
      Als groep zijn wij heel hecht.
      We trainen vaak samen en iedereen kent elkaars kritiekpuntjes.
      We hebben een hechte, vaste kern waar iedereen welkom is!
      Ik hoop dat de sport door zal groeien en dat we nog veel meer mensen mogen verwelkomen in onze horsebackarcherfamilie :)'
)
User.create!(email:'dorit@test.nl', password: 'password', password_confirmation: 'password',
    first_name:'Dorit', user_type: 0)


Blog.create(title:'1',
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
