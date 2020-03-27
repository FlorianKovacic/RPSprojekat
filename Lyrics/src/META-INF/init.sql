INSERT INTO User(username, password, emailAdress, admin) VALUES ('u', 'u', 'u@u.com', false), ('a', 'a', 'a@a.com', true);


INSERT INTO Performer(id, name) VALUES (1, 'A-ha')

INSERT INTO Album(id, title, year) VALUES (1, 'Hunting High and Low', 1985)

INSERT INTO Author(id, name) VALUES (1, 'Pal Waaktaar'), (2, 'Morten Harket'), (3, 'Magne Furuholmen')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (1, 'Take On Me', STRINGDECODE('Talking away\r\nI don''t know what I''m to say\r\nI''ll say it anyway\r\nToday is another day to find you\r\nShying away\r\nI''ll be coming for your love. OK?\r\n\r\nTake on me (take on me)\r\nTake me on (take on me)\r\nI''ll be gone\r\nIn a day or two\r\n\r\nSo needless to say\r\nOf odds and ends\r\nBut I''ll be stumbling away\r\nSlowly learning that life is OK.\r\nSay after me,\r\n"It''s no better to be safe than sorry."\r\n\r\nTake on me (take on me)\r\nTake me on (take on me)\r\nI''ll be gone\r\nIn a day or two\r\n\r\nOh, things that you say. Yeah.\r\nIs it life or just to play my worries away?\r\nYou''re all the things I''ve got to remember\r\nYou''re shying away\r\nI''ll be coming for you anyway\r\n\r\nTake on me (take on me)\r\nTake me on (take on me)\r\nI''ll be gone\r\nIn a day\r\n\r\nTake on me (take on me)\r\nTake me on (take on me)\r\nI''ll be gone\r\nIn a day\r\n\r\nTake on me (take on me)\r\nTake me on (take on me)'), 'English', true, 1, 1, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (1, 1), (1, 2), (1, 3)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (1, 1), (1, 2), (1, 3)


INSERT INTO Performer(id, name) VALUES (2, 'Depeche Mode')

INSERT INTO Album(id, title, year) VALUES (2, 'Violator', 1990)

INSERT INTO Author(id, name) VALUES (4, 'Gore Martin Lee')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (2, 'Enjoy The Silence', STRINGDECODE('Words like violence\r\nBreak the silence\r\nCome crashing in\r\nInto my little world\r\nPainful to me\r\nPierce right through me\r\nCan''t you understand\r\nOh my little girl\r\n\r\nAll I ever wanted\r\nAll I ever needed\r\nIs here in my arms\r\nWords are very unnecessary\r\nThey can only do harm\r\n\r\nVows are spoken\r\nTo be broken\r\nFeelings are intense\r\nWords are trivial\r\nPleasures remain\r\nSo does the pain\r\nWords are meaningless\r\nAnd forgettable\r\n\r\nAll I ever wanted\r\nAll I ever needed\r\nIs here in my arms\r\nWords are very unnecessary\r\nThey can only do harm\r\n\r\nAll I ever wanted\r\nAll I ever needed\r\nIs here in my arms\r\nWords are very unnecessary\r\nThey can only do harm\r\n[x2]\r\n\r\nEnjoy the silence'), 'English', true, 2, 2, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (2, 4)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (2, 4)


INSERT INTO Performer(id, name) VALUES (3, 'Michael Jackson')

INSERT INTO Album(id, title, year) VALUES (3, 'Dangerous', 1991)

INSERT INTO Author(id, name) VALUES (5, 'Jackson Michael Joe')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (3, 'Black Or White', STRINGDECODE('[Dad:] Hey!\r\n[Kid:] What?!\r\n[Dad:] Turn that off!\r\n[Kid:] Dad, this is the best part!\r\n[Dad:] Turn it off!\r\n[Kid:] No!\r\n[Dad:] It''s too late for this. Turn it off!\r\n[Kid:] Dad, this is the best part! Come on!\r\n[Dad:] No, turn it off now!\r\n[Kid:] No, this is the—I want to listen to it, OK?!\r\n[Dad:] You''ve got things to do tomorrow ... turn it off now!\r\n[Kid:] Yeah, right. Too late. Sure. Eat this.\r\n\r\nI took my baby on a Saturday bang\r\n"Boy, is that girl with you?"\r\nYes, we''re one and the same\r\n\r\nNow I believe in miracles\r\nAnd a miracle has happened tonight\r\n\r\nBut if you''re thinkin'' about my baby\r\nIt don''t matter if you''re black or white\r\n\r\nThey print my message in the Saturday Sun\r\nI had to tell them I ain''t second to none\r\n\r\nAnd I told about equality\r\nAnd it''s true\r\nEither you''re wrong or you''re right\r\n\r\nBut if you''re thinkin'' about my baby\r\nIt don''t matter if you''re black or white\r\n\r\nDon''t look at that\r\n\r\nI am tired of this devil\r\nI am tired of this stuff\r\nI am tired of this business\r\nSo when the going gets rough\r\n\r\nI ain''t scared of your brother\r\nI ain''t scared of no sheets\r\nI ain''t scared of nobody\r\nGirl, when the goin'' gets mean\r\n\r\n[L.T.B.:]\r\nProtection for gangs, clubs and nations\r\nCausing grief in human relations\r\nIt''s a turf war on a global scale\r\nI''d rather hear both sides of the tale\r\nSee, it''s not about races\r\nJust places\r\nFaces\r\nWhere your blood comes from\r\nIs where your space is\r\nI''ve seen the bright get duller\r\nI''m not going to spend my life being a color\r\n\r\n[Michael Jackson:]\r\nDon''t tell me you agree with me\r\nWhen I saw you kicking dirt in my eye\r\n\r\nBut if you''re thinkin'' about my baby\r\nIt don''t matter if you''re black or white\r\n\r\nI said if you''re thinkin'' about my baby\r\nIt don''t matter if you''re black or white\r\n\r\nI said if you''re thinkin'' about my brother\r\nIt don''t matter if you''re black or white\r\n\r\nAlright\r\nAlright\r\nAlright\r\nYeah, yeah, yeah, now\r\nAlright\r\nAlright\r\nSchamo\r\nYeah, yeah, yeah, now\r\nAlright\r\n\r\nIt''s black, it''s white\r\nIt''s tough for you to get by\r\nIt''s black, it''s white, woo\r\n\r\nIt''s black, it''s white\r\nIt''s tough for you to get by\r\nIt''s black, it''s white, woo'), 'English', true, 3, 3, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (3, 5)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (3, 5)


INSERT INTO Performer(id, name) VALUES (4, 'Survivor')

INSERT INTO Album(id, title, year) VALUES (4, 'Eye Of The Tiger', 1982)

INSERT INTO Author(id, name) VALUES (6, 'Peterik James'), (7, 'Sullivan Frank Micheal III')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (4, 'Eye Of The Tiger', STRINGDECODE('Rising up, back on the street\r\nDid my time, took my chances\r\nWent the distance, now I''m back on my feet\r\nJust a man and his will to survive\r\n\r\nSo many times it happens too fast\r\nYou trade your passion for glory\r\nDon''t lose your grip on the dreams of the past\r\nYou must fight just to keep them alive\r\n\r\nIt''s the eye of the tiger\r\nIt''s the thrill of the fight\r\nRising up to the challenge of our rival\r\nAnd the last known survivor\r\nStalks his prey in the night\r\nAnd he''s watching us all with the eye of the tiger\r\n\r\nFace to face, out in the heat\r\nHanging tough, staying hungry\r\nThey stack the odds still we take to the street\r\nFor the kill with the skill to survive\r\n\r\nIt''s the eye of the tiger\r\nIt''s the thrill of the fight\r\nRising up to the challenge of our rival\r\nAnd the last known survivor\r\nStalks his prey in the night\r\nAnd he''s watching us all with the eye of the tiger\r\n\r\nRising up, straight to the top\r\nHad the guts, got the glory\r\nWent the distance, now I''m not gonna stop\r\nJust a man and his will to survive\r\n\r\nIt''s the eye of the tiger\r\nIt''s the thrill of the fight\r\nRising up to the challenge of our rival\r\nAnd the last known survivor\r\nStalks his prey in the night\r\nAnd he''s watching us all with the eye of the tiger\r\n\r\nThe eye of the tiger\r\nThe eye of the tiger\r\nThe eye of the tiger\r\nThe eye of the tiger'), 'English', true, 4, 4, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (4, 6), (4, 7)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (4, 6), (4, 7)


INSERT INTO Performer(id, name) VALUES (5, 'Toto')

INSERT INTO Album(id, title, year) VALUES (5, 'Toto IV', 1982)

INSERT INTO Author(id, name) VALUES (8, 'Paich David F'), (9, 'Porcaro Jeffrey T')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (5, 'Africa', STRINGDECODE('I hear the drums echoing tonight\r\nBut she hears only whispers of some quiet conversation\r\nShe''s coming in twelve-thirty flight\r\nHer moonlit wings reflect the stars that guide me towards salvation\r\n\r\nI stopped an old man along the way\r\nHoping to find some old forgotten words or ancient melodies\r\nHe turned to me as if to say\r\n"Hurry, boy, it''s waiting there for you"\r\n\r\nIt''s gonna take a lot to drag me away from you\r\nThere''s nothing that a hundred men or more could ever do\r\nI bless the rains down in Africa\r\nGonna take some time to do the things we never had\r\n\r\nThe wild dogs cry out in the night\r\nAs they grow restless longing for some solitary company\r\nI know that I must do what''s right\r\nSure as Kilimanjaro rises like Olympus above the Serengeti\r\n\r\nI seek to cure what''s deep inside\r\nFrightened of this thing that I''ve become\r\n\r\nIt''s gonna take a lot to drag me away from you\r\nThere''s nothing that a hundred men or more could ever do\r\nI bless the rains down in Africa\r\nGonna take some time to do the things we never had\r\n\r\n"Hurry, boy, she''s waiting there for you"\r\n\r\nIt''s gonna take a lot to drag me away from you\r\nThere''s nothing that a hundred men or more could ever do\r\nI bless the rains down in Africa\r\nI bless the rains down in Africa\r\nI bless the rains down in Africa\r\nI bless the rains down in Africa\r\nI bless the rains down in Africa\r\nGonna take some time to do the things we never had'), 'English', true, 5, 5, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (5, 8), (5, 9)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (5, 8), (5, 9)


INSERT INTO Performer(id, name) VALUES (6, 'The Beatles')

INSERT INTO Album(id, title, year) VALUES (6, 'Past Masters. Volume One', 1988)

INSERT INTO Author(id, name) VALUES (10, 'John Lennon'), (11, 'Paul McCartney')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (6, 'She Loves You', STRINGDECODE('She loves you, yeah, yeah, yeah\r\nShe loves you, yeah, yeah, yeah\r\nShe loves you, yeah, yeah, yeah, yeah\r\n\r\nYou think you lost your love\r\nWell, I saw her yesterday\r\nIt''s you she''s thinking of\r\nAnd she told me what to say\r\n\r\nShe says she loves you\r\nAnd you know that can''t be bad\r\nYes, she loves you\r\nAnd you know you should be glad\r\n\r\nShe said you hurt her so\r\nShe almost lost her mind\r\nBut now she says she knows\r\nYou''re not the hurting kind\r\n\r\nShe says she loves you\r\nAnd you know that can''t be bad\r\nYes, she loves you\r\nAnd you know you should be glad, ooh\r\n\r\nShe loves you, yeah, yeah, yeah\r\nShe loves you, yeah, yeah, yeah\r\nAnd with a love like that\r\nYou know you should be glad\r\n\r\nYou know it''s up to you\r\nI think it''s only fair\r\nPride can hurt you too\r\nApologize to her\r\n\r\nBecause she loves you\r\nAnd you know that can''t be bad\r\nYes, she loves you\r\nAnd you know you should be glad, ooh\r\n\r\nShe loves you, yeah, yeah, yeah\r\nShe loves you, yeah, yeah, yeah\r\nWith a love like that\r\nYou know you should be glad\r\nWith a love like that\r\nYou know you should be glad\r\nWith a love like that\r\nYou know you should be glad\r\nYeah, yeah, yeah\r\nYeah, yeah, yeah, yeah'), 'English', true, 6, 6, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (6, 10), (6, 11)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (6, 10), (6, 11)


INSERT INTO Performer(id, name) VALUES (7, 'Led Zeppelin')

INSERT INTO Album(id, title, year) VALUES (7, 'Led Zeppelin IV', 1971)

INSERT INTO Author(id, name) VALUES (12, 'Page James Patrick'), (13, 'Plant R A')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (7, 'The Battle Of Evermore', STRINGDECODE('The Queen of Light took her bow,\r\nAnd then she turned to go,\r\nThe Prince of Peace embraced the gloom,\r\nAnd walked the night alone.\r\n\r\nOh, dance in the dark of night,\r\nSing to the morning light.\r\nThe dark Lord rides in force tonight,\r\nAnd time will tell us all.\r\n\r\nOh, throw down your plow and hoe,\r\nRest not to lock your homes.\r\nSide by side we wait the might\r\nOf the darkest of them all.\r\n\r\nI hear the horses'' thunder down in the valley below,\r\nI''m waiting for the angels of Avalon, waiting for the eastern glow.\r\n\r\nThe apples of the valley hold the seeds of happiness,\r\nThe ground is rich from tender care,\r\nRepay, do not forget, no, no.\r\n\r\nDance in the dark of night,\r\nSing to the morning light.\r\nThe apples turn to brown and black,\r\nThe tyrant''s face is red.\r\n\r\nOh war is the common cry,\r\nPick up your swords and fly.\r\nThe sky is filled with good and bad\r\nThat mortals never know.\r\n\r\nOh, well, the night is long, the beads of time pass slow,\r\nTired eyes on the sunrise, waiting for the eastern glow.\r\n\r\nThe pain of war cannot exceed the woe of aftermath,\r\nThe drums will shake the castle wall,\r\nThe ring wraiths ride in black, ride on.\r\n\r\nSing as you raise your bow,\r\nShoot straighter than before.\r\nNo comfort has the fire at night\r\nThat lights the face so cold.\r\n\r\nOh dance in the dark of night,\r\nSing to the morning light.\r\nThe magic runes are writ in gold to bring the balance back.\r\nBring it back.\r\n\r\nAt last the sun is shining,\r\nThe clouds of blue roll by,\r\nWith flames from the dragon of darkness,\r\nThe sunlight blinds his eyes.'), 'English', true, 7, 7, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (7, 12), (7, 13)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (7, 12), (7, 13)


INSERT INTO Performer(id, name) VALUES (8, 'AC/DC')

INSERT INTO Album(id, title, year) VALUES (8, 'The Razor''s Edge', 1990)

INSERT INTO Author(id, name) VALUES (14, 'Young Angus Mckinnon'), (15, 'Young Malcolm Mitchell')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (8, 'Thunderstruck', STRINGDECODE('Thunder, ah\r\nThunder, ah\r\nThunder, ah\r\nThunder, ah\r\nThunder, ah\r\nThunder, ah\r\nThunder, ah\r\nThunder, ah\r\nThunder, ah\r\nThunder, ah\r\n\r\nI was caught\r\nIn the middle of a railroad track (thunder)\r\nI looked round\r\nAnd I knew there was no turning back (thunder)\r\nMy mind raced\r\nAnd I thought what could I do? (thunder)\r\nAnd I knew\r\nThere was no help, no help from you (thunder)\r\nSound of the drums\r\nBeating in my heart\r\nThe thunder of guns (yeah)\r\nTore me apart\r\n\r\nYou''ve been\r\nThunderstruck\r\n\r\nRode down the highway\r\nBroke the limit, we hit the town\r\nWent through the Texas, yeah Texas, and we had some fun\r\nWe met some girls\r\nSome dancers who gave a good time\r\nBroke all the rules\r\nPlayed all the fools\r\nYeah yeah they, they, they blew our minds\r\n\r\nAnd I was shaking at the knees\r\nCould I come again please\r\nYeah them ladies were too kind\r\n\r\nYou''ve been\r\nThunderstruck\r\nThunderstruck\r\nYeah, Yeah, Yeah, Thunderstuck\r\nOooh, Thunderstuck\r\n\r\n(Yeah)\r\n\r\nI was shaking at the knees\r\nCould I come again please\r\n\r\nThunderstruck\r\nThunderstruck\r\nYeah, Yeah, Yeah, Thunderstruck, Thunderstruck\r\nYeah, Yeah, Yeah\r\n\r\nYeah It''s alright, we''re doin'' fine\r\nYeah It''s alright, we''re doin'' fine, fine, fine\r\n\r\nThunderstruck, yeah, yeah, yeah\r\nThunderstruck, Thunderstruck\r\nThunderstruck, whoa, baby, baby\r\nThunderstruck, you''ve been Thunderstruck\r\nThunderstruck, Thunderstruck, Thunderstruck\r\nYou''ve been Thunderstruck'), 'English', true, 8, 8, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (8, 14), (8, 15)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (8, 14), (8, 15)


INSERT INTO Performer(id, name) VALUES (9, 'Alice Cooper')

INSERT INTO Album(id, title, year) VALUES (9, 'Trash', 1989)

INSERT INTO Author(id, name) VALUES (16, 'Child Desmond'), (17, 'Cooper Alice'), (18, 'Mc Curry John M')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (9, 'Poison', STRINGDECODE('Your cruel device,\r\nYour blood like ice.\r\nOne look could kill,\r\nMy pain, your thrill.\r\n\r\nI wanna love you, but I better not touch (don''t touch)\r\nI wanna hold you, but my senses tell me to stop\r\nI wanna kiss you, but I want it too much (too much)\r\nI wanna taste you, but your lips are venomous poison\r\n\r\nYou''re poison running through my veins\r\nYou''re poison, I don''t wanna break these chains.\r\n\r\nYour mouth, so hot\r\nYour web, I''m caught\r\nYour skin, so wet\r\nBlack lace on sweat\r\n\r\nI hear you calling and it''s needles and pins (and pins)\r\nI wanna hurt you just to hear you screaming my name\r\nDon''t wanna touch you, but you''re under my skin (deep in)\r\nI wanna kiss you, but your lips are venomous poison\r\n\r\nYou''re poison running through my veins\r\nYou''re poison, I don''t wanna break these chains\r\nPoison\r\n\r\nOne look (one look) could kill (could kill),\r\nMy pain, your thrill.\r\n\r\nI wanna love you, but I better not touch (don''t touch)\r\nI wanna hold you, but my senses tell me to stop\r\nI wanna kiss you, but I want it too much (too much)\r\nI wanna taste you, but your lips are venomous poison\r\n\r\nYou''re poison running through my veins\r\nYou''re poison, I don''t wanna break these chains\r\nPoison\r\n\r\nI wanna love you, but I better not touch (don''t touch)\r\nI wanna hold you, but my senses tell me to stop\r\nI wanna kiss you, but I want it too much (too much)\r\nI wanna taste you, but your lips are venomous poison\r\n\r\nWell, I don''t wanna break these chains\r\nPoison\r\nRunning deep inside my veins\r\nBurning deep inside my veins\r\nPoison\r\nI don''t wanna break these chains\r\nPoison\r\nI don''t wanna break these chains'), 'English', true, 9, 9, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (9, 16), (9, 17), (9, 18)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (9, 16), (9, 17), (9, 18)


INSERT INTO Performer(id, name) VALUES (10, 'Blondie')

INSERT INTO Album(id, title, year) VALUES (10, 'No Exit', 1999)

INSERT INTO Author(id, name) VALUES (19, 'James Destri')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (10, 'Maria', STRINGDECODE('She moves like she don''t care\r\nSmooth as silk, cool as air\r\nOoh it makes you wanna cry\r\nShe doesn''t know your name\r\nAnd your heart beats like a subway train\r\nOoh it makes you wanna die\r\n\r\nOoh, don''t you wanna take her?\r\nOoh, wanna make her all your own?\r\n\r\nMaria, you''ve gotta see her\r\nGo insane and out of your mind\r\nLatina, Ave Maria\r\nA million and one candle lights\r\n\r\nI''ve seen this thing before\r\nIn my best friend and the boy next door\r\nFool for love and fool on fire\r\n\r\nWon''t come in from the rain\r\nShe''s oceans running down the drain\r\nBlue as ice and desire\r\n\r\nDon''t you wanna make her?\r\nOoh, don''t you wanna take her home?\r\n\r\nMaria, you''ve gotta see her\r\nGo insane and out of your mind\r\nLatina, Ave Maria\r\nA million and one candle lights\r\n\r\nOoh, don''t you wanna break her?\r\nOoh, don''t you wanna take her home?\r\n\r\nShe walks like she don''t care\r\nYou wanna take her everywhere\r\nOoh, it makes you wanna cry\r\n\r\nShe''s like a millionaire\r\nWalkin'' on imported air\r\nOoh, it makes you wanna die\r\n\r\nMaria, you''ve gotta see her\r\nGo insane and out of your mind\r\nLatina, Ave Maria\r\nA million and one candle lights\r\n\r\nMaria, you''ve gotta see her\r\nGo insane and out of your mind\r\nLatina, Ave Maria\r\nA million and one candle lights'), 'English', true, 10, 10, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (10, 19)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (10, 19)


INSERT INTO Performer(id, name) VALUES (11, 'Robbie Williams')

INSERT INTO Album(id, title, year) VALUES (11, 'Escapology', 2002)

INSERT INTO Author(id, name) VALUES (20, 'Guy Chambers'), (21, 'Robbie Williams')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (11, 'Feel', STRINGDECODE('Come and hold my hand\r\nI wanna contact the living\r\nNot sure I understand\r\nThis role I''ve been given\r\n\r\nI sit and talk to God\r\nAnd He just laughs at my plans\r\nMy head speaks a language\r\nI don''t understand\r\n\r\nI just wanna feel\r\nReal love feel the home that I live in\r\n''Cause I got too much life\r\nRunning through my veins\r\nGoing to waste\r\n\r\nI don''t wanna die\r\nBut I ain''t keen on living either\r\nBefore I fall in love\r\nI''m preparing to leave her\r\n\r\nScare myself to death\r\nThat''s why I keep on running\r\nBefore I''ve arrived\r\nI can see myself coming\r\n\r\nI just wanna feel\r\nReal love feel the home that I live in\r\n''Cause I got too much life\r\nRunning through my veins\r\n\r\nGoing to waste\r\nAnd I need to feel real love\r\nAnd a life ever after\r\nI cannot give it up\r\n\r\nI just wanna feel real love\r\nFeel the home that I live in\r\nI got too much love\r\nRunning through my veins\r\nTo go to waste\r\n\r\nI just wanna feel real love\r\nIn a life ever after\r\nThere''s a hole in my soul\r\nYou can see it in my face\r\nIt''s a real big place\r\n\r\nCome and hold my hand\r\nI wanna contact the living\r\nNot sure I understand\r\nThis role I''ve been given\r\nNot sure I understand\r\nNot sure I understand\r\nNot sure I understand\r\nNot sure I understand'), 'English', true, 11, 11, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (11, 20), (11, 21)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (11, 20), (11, 21)


INSERT INTO Performer(id, name) VALUES (12, 'Riblja èorba')

INSERT INTO Author(id, name) VALUES (22, 'Bora Ðorðeviæ')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (12, 'Lutka sa naslovne strane', STRINGDECODE('[Verse 1]\r\nDaješ da te vole glumci, režiseri\r\nNovinari, ljudi neznani i znani\r\nPoješèe te brzo velegradske zveri\r\nAli ti èes biti\r\nNa naslovnoj strani\r\nStatiraèes možda u ponekom filmu\r\nMožda èeš reklamu snimiti za TV\r\nMenjaèe te ko što razmenjuju reèi\r\nIza tvojih leðja prièaèe viceve\r\n\r\n[Chorus: 2x]\r\nTi si savršenstvo bez mane\r\nTi si deo vojnièkih snova\r\nTi si lutka sa naslovne strane\r\nI treba ti lova\r\n\r\n[Verse 2]\r\nSvi vole tvoje idealne mere\r\nTrpeèeš staraèke ruke na sebi\r\nAli to je deo tvoje karijere\r\nPa zašto onda otrpela ne bi\r\nSlavni fotograf seks magazina\r\nSlikaèe svoje umetnièko delo\r\nNezreli klinci otvorenih usta\r\nGledaèe tvoje mlado, golo telo\r\n\r\n[Chorus: 2x]\r\n\r\nTreba ti lova\r\nTreba ti lova\r\nTreba ti lova\r\nTreba ti...'), 'Serbian', true, 12, null, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (12, 22)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (12, 22)


INSERT INTO Performer(id, name) VALUES (13, 'Ðorðe Balaševiæ')

INSERT INTO Album(id, title, year) VALUES (12, 'Odlazi Cirkus', 1980)

INSERT INTO Author(id, name) VALUES (23, 'Ðorðe Balaševiæ')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (13, 'Prièa o Vasi Ladaèkom', STRINGDECODE('Znate l'' prièu o Vasi Ladaèkom? I ja sam je tek onomad èuo.\r\nJednom devet dana nije izlazio iz birtije, kažu da je bio èudna sorta...\r\n\r\nOtac mu je bio sitni paor, ''ranio je sedam gladnih usti''.\r\nMati mu je bila plava, tiha, nežna, jektièava,\r\numrla je s trideset i nešto...\r\n\r\nImali su par jutara zemlje, malu kuæu na kraju sokaka.\r\nNa astalu navek hleba, taman tol''ko kol''ko treba,\r\nal'' je Vasa hteo mnogo više...\r\n\r\nŽeleo je konje vrane, po livadi razigrane,\r\nsat sa zlatnim lancem i salaše...\r\nŽeleo je njive plodne, vinograde blagorodne,\r\nu karuce pregnute èilase, ali nije mog''o da ih ima.\r\n\r\nVoleo je lepu al'' sirotu, uz''o bi je, samo da je znao:\r\nvoleš jednom u životu, sad bogatu il'' sirotu,\r\nto ne bira pamet nego srce...\r\n\r\nSve se nad''o da æe ljubav proæi. Zanavek je otiš''o iz sela.\r\nNikad nije pis''o nikom, venè''o se sa miraždžikom,\r\njedinicom æerkom nekog gazde...\r\n\r\nDobio je konje vrane, po livadi razigrane,\r\nsat sa zlatnim lancem i salaše...\r\nDobio je njive plodne, vinograde blagorodne,\r\nu karuce pregnute èilase, sve je im''o ništa im''o nije.\r\n\r\nPropio se, nije prošlo mnogo, dušu svoju Ðavolu je prod''o.\r\nZnali su ga svi birtaši, tražio je spas u èaši,\r\nali nije mog''o da ga naðe...\r\n\r\nMlad je, kažu, bio i kad je umro, sred birtije, od srèane kapi.\r\nKlonula mu samo glava, k''o da drema, k''o da spava\r\ni još pamte šta je zadnje rek''o...\r\n\r\nDžaba bilo konja vranih, po livadi razigranih,\r\ndžaba bilo sata i salaša...\r\nDžaba bilo njiva plodnih, vinograda blagorodnih,\r\ndžaba bilo karuca, èilaša...\r\n\r\nKada nisam s onom koju volem,\r\nkada nisam s onom koju volem.\r\n\r\nKad ja nisam s onom koju volem,\r\nE, kad nisam s onom koju volem.\r\n\r\nZnate l'' prièu o Vasi Ladaèkom? I ja sam je tek onomad èuo.\r\nÈak i oni slièni njemu, kada razmisle o svemu,\r\nkažu da je bio èudna sorta...'), 'Serbian', true, 13, 12, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (13, 23)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (13, 23)


INSERT INTO Performer(id, name) VALUES (14, 'Zabranjeno pušenje')

INSERT INTO Album(id, title, year) VALUES (13, 'Dok èekaš sabah sa šejtanom', 1985)

INSERT INTO Author(id, name) VALUES (24, 'Davor Suèiæ'), (25, 'Dražen Jankoviæ')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (14, 'Djevojèice kojima miriše koža', STRINGDECODE('Uzalud glancaš svoje špicaste cipele\r\nUzalud otkopèavaš zadnje dugme košulje\r\nOne se neæe nasmijati na tvoje loše folove\r\nNeæe se osvrnuti na tvoje dobacivanje\r\n\r\nMožeš im lagat'' da ti je babo direktor\r\nIli da si treæa godina prava\r\nOne æe znati da si niko i ništa\r\nObièan uhljup s Koševa\r\n\r\nI opet æeš teturati uz memljiv zid\r\nNa iskrivljenoj èesmi oprat æeš lice\r\nSjest'' na ploènik, zapalit'' cigaru\r\nI gledati na drugu stranu ulice\r\n\r\nSa one strane ulice stanuju djevojèice\r\nKojima, kojima miriše koža\r\n\r\nOne vole frajere koji nose bradice\r\nI èije ih rijeèi ostave bez daha\r\nKoji nikad ne prave belaja\r\nKoji nikad ne psuju Alaha\r\n\r\nNe znaju one da ti je srce\r\nVeæe neg'' u tog bradatog gmaza\r\nNikad ti neæe pružiti šansu\r\nNe poznaješ dovoljno efektnih fraza\r\n\r\nI opet æeš...\r\n\r\nSa one strane ulice stanuju djevojèice\r\nKojima, kojima miriše koža'), 'Serbian', true, 14, 13, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (14, 24), (14, 25)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (14, 24), (14, 25)


INSERT INTO Performer(id, name) VALUES (15, 'Idoli')

INSERT INTO Album(id, title, year) VALUES (14, 'Èokolada', 1983)

INSERT INTO Author(id, name) VALUES (26, 'Nebojša Krstiæ'), (27, 'Srðan Šaper'), (28, 'Vlada Divljan')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (15, 'Èokolada', STRINGDECODE('Ti si moja èokolada,\r\nja sam tvoja èokolada\r\ni da nisi tako mlada\r\nja bih te ljubio.\r\n\r\nRef. 4x\r\nJa bih te ljubio.\r\n\r\nTi si moja èokolada,\r\nja sam tvoja èokolada\r\ni da nema onog gada\r\nja bih te ljubio\r\n\r\nRef. 8x'), 'Serbian', true, 15, 14, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (15, 28)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (15, 26), (15, 27), (15, 28)


INSERT INTO Performer(id, name) VALUES (16, 'Neda Ukraden')

INSERT INTO Album(id, title, year) VALUES (15, 'Hoæu tebe', 1985)

INSERT INTO Author(id, name) VALUES (29, 'Ðorðe Novkoviæ'), (30, 'Neda Ukraden'), (31, 'Nenad Ninèeviæ'), (32, 'Marina Tucakoviæ')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (16, 'Zora je', STRINGDECODE('Zora je svanula\r\nsuza je iz oka kanula\r\nzora je, nema te\r\nèuješ li, ne mogu bez tebe\r\n\r\nRef.\r\nSanjam te, sanjam te\r\nsve me još, sve me još\r\nsve me sjeæa na tebe\r\nsamo pjesma moja èuje se\r\na nema te\r\n\r\n\r\nZora je, nema te\r\nsamo me tuga miluje\r\nzora je svanula\r\nsuza je iz oka kanula'), 'Serbian', true, 16, 15, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (16, 29)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (16, 29), (16, 30), (16, 31), (16, 32)


INSERT INTO Performer(id, name) VALUES (17, 'Vlastimir Ðuza Stojiljkoviæ')

INSERT INTO Author(id, name) VALUES (33, 'Božidar Timotijeviæ'), (34, 'Darko Kraljiæ')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (17, 'Devojko mala', STRINGDECODE('Devojko mala,\r\npesmo moga grada,\r\nšto si mi dala\r\nsrce puno sna.\r\n\r\nO, što se setih\r\nkišu da ti kupim,\r\ni oblak mali,\r\npod kojim tebe snim.\r\n\r\nNemoj da budiš\r\noèi moje snene,\r\nkad kiša pada,\r\nja sam oblak sam.\r\n\r\nDevojko mala,\r\npesmo moga grada,\r\ntvoju bih senku\r\nopet da ljubim ja.\r\n\r\nDevojko mala,\r\npesmo moga grada,\r\nšto si mi dala\r\nsrce puno sna.\r\n\r\nZašto se setih\r\nkišu da ti kupim,\r\ni oblak mali,\r\npod kojim tebe snim.\r\n\r\nNemoj da budiš\r\noèi moje snene,\r\nkad kiša pada,\r\nja sam oblak sam.\r\n\r\nDevojko mala,\r\npesmo moga grada,\r\ntvoju bih senku\r\nopet da ljubim ja.'), 'Serbian', true, 17, null, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (17, 34)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (17, 33)


INSERT INTO Performer(id, name) VALUES (18, 'Teška industrija')

INSERT INTO Author(id, name) VALUES (35, 'Duško Trifunoviæ'), (36, 'Gabor Lenðel')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (18, 'Život je maskenbal', STRINGDECODE('Obuci staru krinolinu\r\nI prebaci bijeli šal\r\nJa æu svirat violinu\r\nI bit æe maskenbal\r\n\r\nZaigraj kao da more šumi\r\nA ti si jedan val\r\nSama veliku tajnu glumi\r\nTakav je maskenbal\r\n\r\nNemoj da skrivaš lice malo\r\nPusti ga neka sja\r\nNikome nije do nas stalo\r\nSami smo, samo ti i ja\r\n\r\nŽivot je maskenbal\r\nPod tuðom maskom\r\nSvatko se krije\r\nAko u sebe siguran nije\r\n\r\nŽivot je maskenbal\r\nLjudi su krivi\r\nS tuðom maskom\r\nLakše se živi'), 'Serbian', true, 18, null, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (18, 35), (18, 36)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (18, 35), (18, 36)


INSERT INTO Album(id, title, year) VALUES (16, 'Prièa o ljubavi obièno ugnjavi', 1988)

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (19, 'Avionu slomiæu ti krila', STRINGDECODE('Bivao sam sa jednom i drugom,\r\nmuvao se sa onom i ovom,\r\ndružio se sa sreæom i tugom\r\na ti ode s prvim avionom.\r\n\r\nTeoretski ljubav lepo zvuèi,\r\nmalèice je drukèije u praksi.\r\nMnogo toga još uvek se uèi\r\n‘ajmo dole, stigao je taksi.\r\n\r\nRef. 2x\r\nAvionu, slomiæu ti krila,\r\nda ne letiš ona bi tu bila,\r\njoj ako ti uhvatim pilota,\r\nlišiæu ga njegovog života.\r\n\r\nÆutim i kroz staklo gledam,\r\nboing sedam, èetiri, sedam.\r\nTi si jedina, ti si dragocena\r\nèista desetka, to ti je ocena.\r\n\r\nRef. 4x'), 'Serbian', true, 12, 16, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (19, 22)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (19, 22)


INSERT INTO Performer(id, name) VALUES (19, 'Psihomodo pop')

INSERT INTO Album(id, title, year) VALUES (17, 'Godina zmaja', 1988)

INSERT INTO Author(id, name) VALUES (37, 'Davor Gobac'), (38, 'Lou Reed')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (20, 'Rano Jutro', STRINGDECODE('Laki ljudi šeæu gradom\r\nblijeda lica nosi zrak\r\n\r\nRano jutro letim zrakom\r\nèini se da nosi me lahor blag\r\n\r\nI što da radim deèko\r\nu ovako tužnom gradu\r\nosim da vjerujem u zrak\r\n\r\nDjevojèice mlade šeæu gradom\r\nblijeda lica nosi zrak\r\n\r\nA keèkice male, keèkice male\r\nlete zrakom, lete zrakom\r\nda li æu ikad više biti tako mlad\r\n\r\nI što da radim sada\r\nu ovako tužnom gradu\r\nosim da vjerujem u zrak\r\n\r\nI što da radim sada\r\nkada sam ostao potpuno sam\r\npotpuno sam\r\n\r\nU rano jutro baby\r\nu rano jutro honey\r\n\r\nU rano jutro baby\r\nu rano jutro honey'), 'Serbian', true, 19, 17, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (20, 38)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (20, 37)


INSERT INTO Performer(id, name) VALUES (20, 'Michel Telo')

INSERT INTO Album(id, title, year) VALUES (18, 'Na Balada', 2011)

INSERT INTO Author(id, name) VALUES (39, 'Amanda Cruz'), (40, 'Arcoverde Sharon Acioly'), (41, 'Antonio Dyggs')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (21, 'Ai Se Eu Te Pego', STRINGDECODE('Nossa, nossa\r\nAssim voce me mata\r\nAi se eu te pego, ai ai se eu te pego\r\n\r\nDelicia, delicia\r\nAssim voce me mata\r\nAi se eu te pego, ai ai se eu te pego\r\n\r\nSabado na balada\r\nA galera começou a dançar\r\nE passou a menina mais linda\r\nTomei coragem e comecei a falar\r\n\r\nNossa, nossa\r\nAssim voce me mata\r\nAi se eu te pego, ai ai se eu te pego\r\n\r\nDelicia, delicia\r\nAssim voce me mata\r\nAi se eu te pego, ai ai se eu te pego\r\n\r\nSabado na balada\r\nA galera começou a dançar\r\nE passou a menina mais linda\r\nTomei coragem e comecei a falar\r\n\r\nNossa, nossa\r\nAssim voce me mata\r\nAi se eu te pego, ai ai se eu te pego\r\n\r\nDelicia, delicia\r\nAssim voce me mata\r\nAi se eu te pego, ai ai se eu te pego'), 'Other', true, 20, 18, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (21, 39), (21, 40), (21, 41)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (21, 39), (21, 40), (21, 41)


INSERT INTO Performer(id, name) VALUES (21, 'Nicky Jam')

INSERT INTO Album(id, title, year) VALUES (19, 'Fénix', 2017)

INSERT INTO Author(id, name) VALUES (42, 'Nick Rivera Caminero'), (43, 'Cristhian Camilo Mena Moreno'), (44, 'Juan Medina Velez')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (22, 'El Perdón', STRINGDECODE('Dime si es verdad...\r\nMe dijeron que te estas casando\r\nTú no sabes lo que estoy sufriendo\r\nEsto te lo tengo que decir\r\n\r\nCuéntame\r\nTu despedida para mi fue dura\r\nSerá que te llevo a la luna\r\nY yo no supe hacerlo así\r\n\r\nTe estaba buscando\r\nPor las calles gritando\r\nEso me está matando oh no\r\n\r\nTe estaba buscando\r\nPor las calles gritando\r\nComo un loco tomando oh...\r\n\r\nEs que yo sin ti\r\nY tú sin mi\r\nDime quién puede ser feliz\r\nEsto no me gusta\r\nEsto no me gusta\r\n\r\nEs que yo sin ti\r\nY tú sin mi\r\nDime quién puede ser feliz\r\nEso no me gusta\r\nEso no me gusta\r\n\r\nVivir si ti, no aguanto más\r\nPor eso vengo a decirte lo que siento\r\nEstoy sufriendo en esta soledad\r\n\r\nY aunque tu padre no aprobó esta relación\r\nYo sigo insistiendo a pedir perdón\r\nLo único que importa está en tu corazón\r\n\r\nTe estaba buscando\r\nPor las calles gritando\r\nEsto me está matando oh no\r\n\r\nTe estaba buscando\r\nPor las calles gritando\r\nComo un loco tomando oh...\r\n\r\nEs que yo sin ti\r\nY tú sin mi\r\nDime quién puede ser feliz\r\nEsto no me gusta\r\nEsto no me gusta\r\n\r\nEs que yo sin ti\r\nY tú sin mi\r\nDime quién puede ser feliz\r\nEso no me gusta\r\nEso no me gusta\r\n\r\nYo te juré a ti eterno amor\r\nY ahora otro te da calor\r\nCuando en las noches tienes frío oh oh\r\n\r\nYo sé que él te parece mejor\r\nPero yo estoy en tu corazón\r\nY por eso pido perdón\r\n\r\nEs que yo sin ti\r\nY tú sin mi\r\nDime quién puede ser feliz\r\nEsto no me gusta oh no\r\n\r\nEs que yo sin ti\r\nY tú sin mi\r\nDime quién puede ser feliz\r\nEsto no me gusta oh yeah...\r\n\r\n(Tú sin mí)\r\nDicen que uno no sabe lo que tiene\r\nHasta que lo pierde pero...\r\n(Yo sin ti)\r\nVale la pena luchar por lo que uno quiere\r\n(No puedo vivir así)\r\nY hacer el intento\r\n(No quiero vivir así)\r\n\r\nN.I.C.K\r\nNicky Nicky Nick Jam\r\n(No quiero que me dejes por favor)\r\nSaga White Black\r\n(Y te pido perdón)\r\nLa Industria Inc'), 'Other', true, 21, 19, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (22, 42), (22, 43), (22, 44)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (22, 42), (22, 43), (22, 44)


INSERT INTO Performer(id, name) VALUES (22, 'Ákos')

INSERT INTO Album(id, title, year) VALUES (20, 'Andante', 2003)

INSERT INTO Author(id, name) VALUES (45, 'Kovács Ákos'), (46, 'Hauber Zsolt'), (47, 'Menczel Gábor')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (23, 'Valami véget ért', STRINGDECODE('Forró betonon hasalok,\r\ntávoli hang csak a gyász,\r\nlassan lüktet egy ér,\r\nfellobog halkan a láz.\r\nSima tenyér a hátamhoz ér.\r\nÓ csak játszik a szél.\r\nTudom, már messze vagy rég...\r\nBennem minden halk szavad él.\r\n\r\nHalott virágok illatát nyögik a fák\r\nés megrázkódik a táj,\r\nvalami véget ért, valami fáj.\r\n\r\nAhogy fölém nõ az éj...\r\nálmodni nem hagy a vád.\r\nHa becsukom fáradt szemem\r\ntekinteted az arcomba vág.\r\nSzemed tüzénél megvakulok,\r\nde lassan újra feljön a nap...\r\nNélküled semmi vagyok.\r\n\r\nHalott virágok illatát nyögik a fák\r\nés megrázkódik a táj,\r\nvalami véget ért, valami fáj.\r\n\r\nHalott virágok illatát nyögik a fák\r\nés megrázkódik a táj,\r\nvalami véget ért, valami véget ért,\r\nvalami véget ért… valami fáj.'), 'Other', true, 22, 20, 'a')

INSERT INTO Lyrics_by(song_id, author_id) VALUES (23, 45), (23, 46), (23, 47)


INSERT INTO Performer(id, name) VALUES (23, 'Quimby')

INSERT INTO Album(id, title, year) VALUES (21, 'Family tugedör', 2006)

INSERT INTO Author(id, name) VALUES (48, 'Kiss Tibor')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (24, 'Autó egy szerpentinen', STRINGDECODE('Most olyan könnyû minden,\r\nszinte csak a semmi tart.\r\nA kutyákat elengedtem,\r\nés a forgószél elvitte a vihart.\r\n\r\nAlattunk a tenger,\r\nszemben a nap zuhan.\r\nNyeljük a csíkokat\r\nés a világ pajkos szellõként suhan.\r\n\r\nTékozló angyal a magasban,\r\nböffent nincs baj, nincs haragban senkivel.\r\nG dúrban zúgják a fákon a kabócák,\r\nhogy láss csodát, láss ezer csodát,\r\nláss ezer csodát.\r\n\r\nÉhes pupillákkal\r\nvállamra ördög ül.\r\nBallal elpöckölöm\r\naz élet jobb híján egyedül.\r\n\r\nAutó egy szerpentinen\r\nmely ki tudja merre tart.\r\nKócos kis romantika\r\ntejfogával a szívembe mart.\r\n\r\nTékozló angyal a magasban,\r\nböffent nincs baj, nincs haragban senkivel.\r\nG dúrban zúgják a fákon a kabócák,\r\nhogy láss csodát, láss ezer csodát,\r\nláss ezer csodát.\r\n(3x)\r\n\r\nLáss ezer csodát!'), 'Other', true, 23, 21, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (24, 48)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (24, 48)


INSERT INTO Performer(id, name) VALUES (24, 'PSY')

INSERT INTO Album(id, title, year) VALUES (22, 'Psy 6 (Six Rules), Part 1', 2012)

INSERT INTO Author(id, name) VALUES (49, 'Park Jai Sang'), (50, 'Yoo Keon Hyung')

INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (25, 'Gangnam Style', STRINGDECODE('Oppan Gangnam style\r\nGangnam style\r\n\r\nNajeneun ttasaroun inganjeogin yeoja\r\nKeopi hanjanui yeoyureul aneun pumgyeok inneun yeoja\r\nBami omyeon simjangi tteugeowojineun yeoja\r\nGeureon banjeon inneun yeoja\r\n\r\nNaneun sanai\r\nNajeneun neomankeum ttasaroun geureon sanai\r\nKeopi sikgido jeone one-shot ttaerineun sanai\r\nBami omyeon simjangi teojyeobeorineun sanai\r\nGeureon sanai\r\n\r\nAreumdawo sarangseureowo\r\nGeurae neo hey geurae baro neo hey\r\n\r\nAreumdawo sarangseureowo\r\nGeurae neo hey geurae baro neo hey\r\n\r\nJigeumbuteo gal dekkaji gabolkka\r\n\r\nOppan Gangnam style\r\nGangnam style\r\n\r\nOp, op, op, op\r\nOppan Gangnam style\r\nGangnam style\r\n\r\nOp, op, op, op\r\nOppan Gangnam style\r\n\r\nEh, sexy lady\r\nOp, op, op, op\r\nOppan Gangnam style\r\n\r\nEh, sexy lady\r\nOp, op, op, op\r\nEh-eh-eh, eh-eh-eh\r\n\r\nJeongsukhae boijiman nol ttaen noneun yeoja\r\nIttaeda sipeumyeon mukkeotdeon meori puneun yeoja\r\nGaryeotjiman wenmanhan nochulboda yahan yeoja\r\nGeureon gamgakjeogin yeoja\r\n\r\nNaneun sanai\r\nJeomjanha boijiman nol ttaen noneun sanai\r\nTtaega doemyeon wanjeon michyeobeorineun sanai\r\nGeunyukboda sasangi ultungbultunghan sanai\r\nGeureon sanai\r\n\r\nAreumdawo sarangseureowo\r\nGeurae neo, hey, geurae baro neo, hey\r\n\r\nAreumdawo sarangseureowo\r\nGeurae neo, hey, geurae baro neo, hey\r\n\r\nJigeumbuteo gal dekkaji gabolkka\r\n\r\nOppan Gangnam style\r\nGangnam style\r\n\r\nOp, op, op, op\r\nOppan Gangnam style\r\nGangnam style\r\n\r\nOp, op, op, op\r\nOppan Gangnam style\r\n\r\nEh, sexy lady\r\nOp, op, op, op\r\nOppan Gangnam style\r\n\r\nEh, sexy lady\r\nOp, op, op, op\r\nEh-eh-eh, eh-eh-eh\r\n\r\nTtwineun nom geu wie naneun nom\r\nBaby, baby\r\nNaneun mwol jom aneun nom\r\n\r\nTtwineun nom geu wie naneun nom\r\nBaby, baby\r\nNaneun mwol jom aneun nom\r\nYou know what I''m saying\r\n\r\nOppan Gangnam style\r\nEh-eh-eh, eh-eh-eh\r\nEh, sexy lady\r\nOp, op, op, op\r\nOppan Gangnam style\r\n\r\nEh, sexy lady\r\nOp, op, op, op\r\nEh-eh-eh, eh-eh-eh\r\n\r\nOppan Gangnam style'), 'Other', true, 24, 22, 'a')

INSERT INTO Music_by(song_id, author_id) VALUES (25, 49), (25, 50)

INSERT INTO Lyrics_by(song_id, author_id) VALUES (25, 49), (25, 50)


--INSERT INTO Performer(id, name) VALUES (,)
--
--INSERT INTO Album(id, title, year) VALUES (,,)
--
--INSERT INTO Author(id, name) VALUES (,)
--
--INSERT INTO Song(id, title, lyrics, language, approved, performer, album, uploader) VALUES (,, STRINGDECODE(''),,,,,)
--
--INSERT INTO Music_by(song_id, author_id) VALUES (,)
--
--INSERT INTO Lyrics_by(song_id, author_id) VALUES (,)