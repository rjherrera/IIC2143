# --- Users ---
admin = User.create! :name => 'John A. Doe', :email => 'admin@noflix.com', :password => 'admin123', :password_confirmation => 'admin123', :is_admin => true
user = User.create! :name => 'John U. Doe', :email => 'user@noflix.com', :password => 'user123', :password_confirmation => 'user123'

# --- Directors ---
directors_list = [
  "Pamela Fryman",
  "Brett Ratner",
  "Greg Nicotero",
  "Duffer Brothers",
  "James Foley"
]
directors_list.each do |name|
  Director.create( name: name )
end

# --- TvShows ---
tv_shows_list = [
    [
        "How I Met Your Mother",
        "English",
        "United States",
        "Comedy",
        2005,
        2014,
        "A father recounts to his children, through a series of flashbacks, the journey he and his four best friends took leading up to him meeting their mother.",
        Director.find_by_name("Pamela Fryman").id
    ],
    [
        "Prison Break",
        "English",
        "United States",
        "Drama",
        2005,
        2009,
        "Due to a political conspiracy, an innocent man is sent to death row and his only hope is his brother, who makes it his mission to deliberately get himself sent to the same prison in order to break the both of them out, from the inside.",
        Director.find_by_name("Brett Ratner").id
    ],
    [
        "The Walking Dead",
        "English",
        "United States",
        "Drama",
        2010,
        2017,
        "Sheriff Deputy Rick Grimes wakes up from a coma, to learn the world is in ruins, and must lead a group of survivors to stay alive.",
        Director.find_by_name("Greg Nicotero").id
    ],
    [
        "Stranger Things",
        "English",
        "United States",
        "Drama",
        2016,
        2016,
        "When a young boy disappears, his mother, a police chief, and his friends must confront terrifying forces in order to get him back.",
        Director.find_by_name("Duffer Brothers").id
    ],
    [
        "House Of Cards",
        "English",
        "United States",
        "Drama",
        2013,
        2017,
        "A Congressman works with his equally conniving wife to exact revenge on the people who betrayed him.",
        Director.find_by_name("James Foley").id
    ]
]

tv_shows_list.each do |title, language, country, category, start_year, end_year, plot, director_id|
    TvShow.create(  title: title,
                    language: language,
                    country: country,
                    category: category,
                    start_year: start_year,
                    end_year: end_year,
                    plot: plot,
                    director_id: director_id,
                    user_id: nil)
end

# --- Seasons ---
himym = TvShow.find_by_title("How I Met Your Mother")
himym.seasons << Season.create(number: 1)
himym.seasons << Season.create(number: 2)
pb = TvShow.find_by_title("Prison Break")
pb.seasons << Season.create(number: 1)
pb.seasons << Season.create(number: 2)
twd = TvShow.find_by_title("The Walking Dead")
twd.seasons << Season.create(number: 1)
twd.seasons << Season.create(number: 2)
st = TvShow.find_by_title("Stranger Things")
st.seasons << Season.create(number: 1)
hoc = TvShow.find_by_title("House Of Cards")
hoc.seasons << Season.create(number: 1)
hoc.seasons << Season.create(number: 2)
hoc.seasons << Season.create(number: 3)


# --- Episodes ---
himym_s1 = Season.find_by(number: 1, tv_show_id: himym.id).id
himym_s2 = Season.find_by(number: 2, tv_show_id: himym.id).id
Episode.create( number: 1, title: "Pilot", duration: "00:23",
                plot: "After his best friend Marshall proposes to his long-term girlfriend, Lily, Ted solicits help from his friend Barney to find 'The One' for his life. He manages to get a date with Robin, a girl he met at his usual neighborhood bar, but threatens to scare Robin away when he accidentally reveals his love for her on the very first date. Meanwhile, Marshall accidentally hits Lily in the eye with the champagne stopper after they get engaged, forcing her to wear an eyepatch.",
                season_id: himym_s1)
Episode.create( number: 2, title: "Purple Giraffe", duration: "00:25",
                plot: "In an attempt to repair his situation with Robin, Ted instead pursues a 'casual' relationship with her by inviting her to a series of parties. Marshall tries to write an important 25-page law paper, but Ted's parties and Lily's post-engagement desire distracts him. Meanwhile, Barney tries to end a relationship he unknowingly started.",
                season_id: himym_s1)
Episode.create( number: 3, title: "Sweet Taste of Liberty", duration: "00:21",
                plot: "Ted agrees to let Barney disrupt his routine by taking an impromptu trip to the airport with him that eventually leads the duo to Philadelphia and trouble with airport security. Meanwhile, Lily and Robin go out for drinks, but Lily becomes jealous when she is not as successful with men as Robin is, for which she blames her engagement ring. Marshall travels between both situations in an attempt to rectify the group's problems.",
                season_id: himym_s1)
Episode.create( number: 4, title: "Return of the Shirt", duration: "00:20",
                plot: "Ted's continuing search for 'The One' leads him to look into his past to rekindle old flames. Unfortunately, the woman he is thinking of is the same woman he broke up with years ago on her birthday, and she still holds a grudge. Meanwhile, Barney dares Robin, the anchor of Metro News One, to slip questionable words or phrases into her daily newscast in return for money. Despite this, Robin begins to appreciate the importance of her job more.",
                season_id: himym_s1)
Episode.create( number: 5, title: "Okay Awesome", duration: "00:24",
                plot: "Robin invites the group to a nightclub, but Marshall and Lily decide to host a wine and cheese party in an attempt to act more mature. Marshall and Lily quickly grow bored, however, and escape their own party in order to join the rest of the group at the nightclub, where they discover Robin outside, unable to gain re-entry into the club. Meanwhile, Ted and Barney experience unforeseen events while dancing.",
                season_id: himym_s1)
Episode.create( number: 6, title: "Slutty Pumpkin", duration: "00:26",
                plot: "Marshall and Lily are excited to participate in the couples costume competition at their usual bar. On the other hand, Robin's refusal to dress in a couple costume with her boyfriend puts stress on their new relationship. Meanwhile, Ted makes his annual visit to the rooftop Halloween party in search of a girl that he met there years ago.",
                season_id: himym_s1)
Episode.create( number: 7, title: "Matchmaker", duration: "00:27",
                plot: "Robin directs a skeptical Ted to an online matchmaking service with a 100% success rate. When the service gives Ted zero matches, Ted sneaks information out of the matchmaker's computer to visit an engaged dermatologist in an effort to debunk the prediction that there are no women out there for him. Meanwhile, Marshall and Lily become obsessed with chasing a strange and unusual critter out of their apartment.",
                season_id: himym_s1)
Episode.create( number: 8, title: "The Duel", duration: "00:22",
                plot: "When Lily decides to formally move into Marshall and Ted's apartment, Barney warns a skeptical Ted that the couple will eventually force him out. When Ted discovers that Lily replaced his beloved, but beat-up, coffee pot with a brand new one, he begins to think that Barney is right. Meanwhile, Barney invents a new dating law and tries to convince others to use it.",
                season_id: himym_s1)
Episode.create( number: 1, title: "Where Were We?", duration: "00:23",
                plot: "The gang tries to help Marshall get over Lily. Barney takes him to a strip club, and Ted takes him to a Yankees game. Marshall finds a credit card trail that leads to Lily's hotel in the city, but the guys try to keep him from going to see her.",
                season_id: himym_s2)
Episode.create( number: 2, title: "The Scorpion and the Toad", duration: "00:23",
                plot: "Barney teaches Marshall how to pick up women. When things start to go sour for an awkward Marshall, Barney steps in and wins the women over... for himself. Lily returns from her art experience. While helping her look for a new apartment, Ted gets sick of hearing about Lily's amazing summer in San Francisco.",
                season_id: himym_s2)
Episode.create( number: 3, title: "Brunch", duration: "00:22",
                plot: "When Ted, Robin, and the gang spend the weekend with his parents, Ted is stunned when a family secret that changes things forever is unveiled at brunch. Meanwhile, Marshall and Lily find it difficult to control themselves when they are forced to spend time together with Ted's parents.",
                season_id: himym_s2)
Episode.create( number: 4, title: "Ted Mosby: Architect", duration: "00:21",
                plot: "After Robin insinuates that Ted's job is boring, Barney sets out to convince his buddy otherwise. As the guys test out the pick-up line, 'Ted Mosby, Architect' on the ladies, they realize it really works. But when Robin hears that Ted is parading around town picking up girls, she is hot on his heels to discover the truth.",
                season_id: himym_s2)
Episode.create( number: 5, title: "World's Greatest Couple", duration: "00:20",
                plot: "Lily moves into Barney's apartment and the trials, troubles, and tribulations may be a bit too much for him to handle.",
                season_id: himym_s2)
Episode.create( number: 6, title: "Aldrin Justice", duration: "00:24",
                plot: "Barney takes it on himself to please Marshall's disgruntled law professor, while Lily gets a job at Ted's architecture firm and tries to teach his boss a big lesson.",
                season_id: himym_s2)
Episode.create( number: 7, title: "Swarley", duration: "00:23",
                plot: "Marshall starts dating a woman and they really hit it off, but Barney and Ted tell him he has to dump her because she has 'crazy eyes'.",
                season_id: himym_s2)

pb_s1 = Season.find_by(number: 1, tv_show_id: pb.id).id
pb_s2 = Season.find_by(number: 2, tv_show_id: pb.id).id
Episode.create( number: 1, title: "Pilot", duration: "00:46",
                plot: "Michael Scofield gets imprisoned in Fox River State Penitentiary as part of an elaborate plan to break out his brother, Lincoln Burrows, who is facing execution for the murder of the Vice President's brother, a charge Burrows denies. At first Scofield gets the displeasure of C.O. head Brad Bellick and then meets his cellmate Fernando Sucre. Scofield forces John Abruzzi to recruit him in the Prison Industries (PI) by proving to know the location of Fibonacci, the only witness against Abruzzi. Scofield also meets Charles Westmoreland, who is believed to be D. B. Cooper, and Dr. Sara Tancredi, who injects him insulin because of his apparent diabetes, and Benjamin Miles 'C-Note' Franklin, who accepts to get anti-insulin drugs for Scofield. Scofield accepts warden Pope's offer to finish making a model of the Taj Mahal. Scofield reunites with Burrows, and reveals that his mysterious body tattoo is the blueprint of the prison. Meanwhile, L.J. Burrows, Lincoln's son, is arrested for drug dealing. Secret Service is revealed to be part the conspiracy against Lincoln. Veronica Donovan, a lawyer and Lincoln's former girlfriend, begins to believe his innocence.",
                season_id: pb_s1)
Episode.create( number: 2, title: "Allen", duration: "00:48",
                plot: "Sucre goes to solitary confinement for keeping illegal materials. For his plan, Scofield needs an Allen bolt, which exists in Bagwell's bench. Bagwell refuses to give him the bolt after Scofield denies his sexual offer. Tancredi doubts Scofield's diabetes and schedules a test. A race fight starts between the black and white prisoners. Scofield obtains the bolt and uses it to unscrew his cell's toilet. Bagwell thinks that Scofield killed the former's male love. Franklin gives Scofield the drug, resulting in the latter's positive test and his regular access to the infirmary. Falzone, Abruzzi's accomplice, pushes him to find Fibonacci. Bellick searches Scofield's cell, but he doesn't find anything. Burrows tells Donovan that he didn't pull the trigger, as shown in the tape, and the man was already dead. Donavan finds a witness named Leticia Barris. Secret Service agent Paul Kellerman reports Donovan's activities to a woman in Montana. Since Sucre can't call his fiance, Delgado, from the solitary, she gets upset and goes out with a man named Hector. Scofield is abducted by Abruzzi's men and tortured for Fibonacci.",
                season_id: pb_s1)
Episode.create( number: 3, title: "Cell Test", duration: "00:43",
                plot: "Lincoln vows to make Abruzzi pay, but Scofield reminds him that Abruzzi is needed. Sucre is released from solitary and Scofield tests the former's loyalty before revealing his plan. Sucre passes the test, but he decides to change his cell and stay out of trouble as he will be released soon. Abruzzi realizes that he must befriend Scofield in order to find Fibonacci. Bagwell plans to lynch Scofield. Abruzzi tries to reconcile with Scofield by having his men beat up Bagwell and thus the latter going to the solitary. Scofield tells Abruzzi about his plan and he agrees to cooperate. L.J.'s probation officer forces him to visit Lincoln and the father and son become closer after a long time. Before Barris can sign her testimony for Lincoln written by Donovan, Kellerman and his fellow agent, Hale, abduct and kill the former. Donovan decides to leave her fiance, Sebastian Balfour. Bellick brings Patoshik, a psychotic inmate, to Scofield's cell. Patoshik becomes a problem for Scofield's plan.",
                season_id: pb_s1)
Episode.create( number: 4, title: "Cute Poison", duration: "00:48",
                plot: "Patoshik is obsessed with Scofield's tattoo; knowing it to be a path. Abruzzi pushes Scofield to take care of Patoshik. When Sucre discovers that Hector is making a move on the former's fiancee, he decides to join Scofield's plan; but the latter tells him that he needs to get rid of Patoshik first. Scofield forms a hole to the infirmary using chemicals provided by Abruzzi and Patoshik's toothpaste. After a scenario made by Scofield, the guards take Patoshik away and Sucre is returned. Sucre starts a commotion in the block to cover for Scofield's noise. Scofield manages to open a hole behind his cell's toilet, opening a way to the corridors behind. In the meantime, with Lincoln's hint, Donovan asks Project Justice for help, which is denied; but Nick Savrinn from the Project decides to join her investigation. Kellerman and Hale learn that Scofield and Lincoln are brothers and arrange to transfer Scofield to a different prison the following day.",
                season_id: pb_s1)
Episode.create( number: 5, title: "English, Fitz or Percy", duration: "00:51",
                plot: "Pope denies Kellerman and Hale's request to have Michael transferred out of Fox River. They threaten Pope to reveal the latter's illegitimate son's history to his wife. Pope informs Scofield of the transfer. Westmoreland advises Scofield to write a petition to the court; which will delay the transfer for weeks no matter the petition's result. The agents tell Pope to throw the petition away. In the meantime, Scofield enlists the team's help to discover part of the escape route, whether to take one of the streets English, Fitz or Percy, outside the prison. He has the guards believe that he attempts to escape, where he discovers police cars flooding English and Percy, but not Fitz. In order to prevent any more troubles, Pope decides to have him transferred; but changes his mind at the last moment and proceeds to tell his wife the truth. Meanwhile, Donovan and Savrinn realize that the tape against Lincoln is faked, but it gets stolen, and she suspects he is working against her.",
                season_id: pb_s1)
Episode.create( number: 1, title: "The Old Head", duration: "00:43",
                plot: "Scofield tells the team about the extra member and they decide to cast out Bagwell; but he informs them that his cousin knows the plan outside and he'll call the authorities if Bagwell is not included. Abruzzi's men find Bagwell's cousin; but the man and his little child is killed in the struggle. Abruzzi feels guilty for everything he's done; but he decides to take care of Bagwell anyway. Bagwell swears to atone for his mistakes like Abruzzi did. The latter spares the former, giving him a chance to slit the latter's throat. Meanwhile, Lincoln is forced to assault Geary to cover for the team, which results in his abduction by the guards. Delgado informs Sucre that she is pregnant and he realizes that he tells her that he is getting out soon. Bellick forces Apolskis to spy on Scofield to avoid solitary for stealing from Geary. In the meantime, Savrinn is taken to a hospital. Hale feels guilty for his actions and plans to escape with his family. He calls Donovan and makes an arrangement.",
                season_id: pb_s2)
Episode.create( number: 2, title: "Tweener", duration: "00:42",
                plot: "Donovan meets Hale, who reveals that Steadman is alive. Before he can give her anything, Kellerman arrives and kills Hale; she escapes after watching the murder. Meanwhile, Abruzzi is taken by a helicopter outside the prison for better care and the odd man problem is solved. Lincoln is beaten by the guards and thrown in the solitary. Pope denies Scofield's request to meet Lincoln. Scofield decides to suspend the plan, but the others push to leave without Lincoln now that everything is ready. Franklin calls his brother-in-law, the only one in the family who knows he is in prison, and tells him to arrange for the plan. Scofield manages to send Lincoln a drug with a message when to take it. The team deliberately makes a mess in the room and Bellick forces them to stay and work until night, giving them the chance to escape. When the time comes, Lincoln takes the drug, gets sick and is taken to the infirmary; and the team proceeds to the room under there; but they realize that the tube Scofield made a hole in is changed with a reinforced one, ruining the breakout.",
                season_id: pb_s2)
Episode.create( number: 3, title: "Sleight of Hand", duration: "00:45",
                plot: "Before Bagwell can make any move, the team hears a guard coming. They hide and after he leaves, they return to their cells without arousing suspicion. Donovan and Savrinn arrange for an appellate court to reveal what she saw. Scofield learns from Westmoreland that the execution will be delayed for weeks if the electric chair has a malfunctioning, a conversation that is heard by Apolskis. Scofield uses a mouse to cut the power of the chair. In the court, Donovan has no evidence for what she saw; and the government attorney presents documents that state no agents with names Kellerman or Hale have ever worked in Secret Service. Bellick forces Apolskis to share what he knows and he tells him what he heard and the latter solves the problem before the execution time comes, surprising Scofield. Lincoln has already surrendered to his apparent fate. He talks to L.J. on the phone and says goodbye to Scofield and Donovan, who has failed at the appeal. Lincoln enters the execution room.",
                season_id: pb_s2)
Episode.create( number: 4, title: "Odd Man Out", duration: "00:46",
                plot: "Three years ago, Scofield was living a comfortable life while Lincoln was saddled with debts. His debts were paid by a man who forced him to kill Steadman in exchange. After Lincoln's arrest, Scofield blamed him for not using his share of the life insurance properly and ruining his life. Donovan revealed to Scofield that there had been no life insurance when his mother had died; Lincoln borrowed the money for Scofield to thrive and kept the truth hidden. Feeling responsible, Scofield planned the breakout. Tancredi used rehabilitation to quit addiction, where Bellick offered her the job in Fox River. Sucre attempted to rob a store to buy Delgado a suiting ring; Hector called the police and Sucre was arrested. Franklin served in the army when he saw prisoner torture. He reported the crime; but he was fired to prevent the scandal. He had to earn money by illegal goods transferring and was arrested, but kept it hidden from his family. Bagwell was in love with a widow who had two children. She had him arrested when she realized that he was wanted for child rape and murder. He promised to find her when he got out.",
                season_id: pb_s2)
Episode.create( number: 5, title: "End of the Tunnel", duration: "00:42",
                plot: "Tancredi reports what she found to Pope, who sends Scofield to solitary after he refuses to talk. Scofield apparently gets mentally ill. Bellick decides to bring more professional workers for the room. The team realizes that the hole must be covered soon. Since Sucre's cell has the only way to the room, he is picked for the job. He covers the hole and starts running in the courtyard before getting caught. With material provided by Bagwell, Sucre relatively justifies his action, but goes to the solitary anyway. Apolskis tells Bellick that the team is planning something related to the floor; but the latter doesn't find the hole because it was covered by Sucre in time. Because of the disappointment, Bellick puts Apolskis in a violent inmate named Avocado's cell. Scofield is taken to the asylum, where he is revealed to be healthy and this was a plan to reach Patoshik, who can help the former with his tattoo; but the latter doesn't remember anything. Meanwhile, Donovan's group recovers Quinn's cell phone to find clues. In the well, L.J. sees the name 'Kellerman' carved by Quinn. He finds Kellerman's house and ambushes him alone. The police arrive and arrest L.J.",
                season_id: pb_s2)

twd_s1 = Season.find_by(number: 1, tv_show_id: twd.id).id
twd_s2 = Season.find_by(number: 2, tv_show_id: twd.id).id
Episode.create( number: 1, title: "Days Gone Bye", duration: "00:41",
                plot: "After being shot, Deputy Sheriff Rick Grimes awakes to find the world overrun by the undead.",
                season_id: twd_s1)
Episode.create( number: 2, title: "Guts", duration: "00:42",
                plot: "In Atlanta, Rick is rescued by a group of survivors, but they soon find themselves trapped inside a department store surrounded by walkers.",
                season_id: twd_s1)
Episode.create( number: 3, title: "Tell It To The Frogs", duration: "00:43",
                plot: "Rick is reunited with Lori and Carl but soon decides - along with some of the other survivors - to return to the rooftop and rescue Merle. Meanwhile, tensions run high between the other survivors at the camp.",
                season_id: twd_s1)
Episode.create( number: 1, title: "What Lies Ahead", duration: "00:44",
                plot: "The group's plan to head for Fort Benning is put on hold when Sophia goes missing.",
                season_id: twd_s2)
Episode.create( number: 2, title: "Bloodletting", duration: "00:45",
                plot: "After Carl is accidentally shot, the group are brought to a family living on a nearby farm. Shane makes a dangerous trip in search of medical supplies.",
                season_id: twd_s2)
Episode.create( number: 3, title: "Save The Last One", duration: "00:46",
                plot: "As Carl's condition continues to deteriorate, Shane and Otis try to dodge the walkers as they head back to the farm.",
                season_id: twd_s2)

st_s1 = Season.find_by(number: 1, tv_show_id: st.id).id
Episode.create( number: 1, title: "Chapter One: The Vanishing of Will Byers", duration: "00:43",
                plot: "In a small Indiana town, the disappearance of a young boy sparks a police investigation.",
                season_id: st_s1)
Episode.create( number: 2, title: "Chapter Two: The Weirdo on Maple Street", duration: "00:43",
                plot: "Mike hides the mysterious girl in his house. Joyce gets a strange phone call.",
                season_id: st_s1)
Episode.create( number: 3, title: "Chapter Three: Holly, Jolly", duration: "00:43",
                plot: "An increasingly concerned Nancy looks for Barb and finds out what Jonathan's been up to. Joyce is convinced Will is trying to talk to her.",
                season_id: st_s1)
Episode.create( number: 4, title: "Chapter Four: The Body", duration: "00:43",
                plot: "Refusing to believe Will is dead, Joyce tries to connect with her son. The boys give Eleven a makeover. Johnathan and Nancy form an unlikely alliance.",
                season_id: st_s1)
Episode.create( number: 5, title: "Chapter Five: The Flea and the Acrobat", duration: "00:43",
                plot: "Hopper breaks into the lab to find the truth about Will's death. The boys try to locate the 'gate' that will take them to Will.",
                season_id: st_s1)
Episode.create( number: 6, title: "Chapter Six: The Monster", duration: "00:43",
                plot: "Hopper and Joyce find the truth about the lab's experiments. After their fight, the boys look for the missing Eleven.",
                season_id: st_s1)


hoc_s1 = Season.find_by(number: 1, tv_show_id: hoc.id).id
hoc_s2 = Season.find_by(number: 2, tv_show_id: hoc.id).id
hoc_s3 = Season.find_by(number: 3, tv_show_id: hoc.id).id
Episode.create( number: 1, title: "Chapter 1", duration: "00:53",
                plot: "Congressman Francis Underwood has been declined the chair for Secretary of State. He's now gathering his own team to plot his revenge. Zoe Barnes, a reporter for the Washington Herald, will do anything to get her big break.",
                season_id: hoc_s1)
Episode.create( number: 2, title: "Chapter 2", duration: "00:53",
                plot: "Francis and Doug plan to frame Secretary of State nominee, Michael Kern. Meanwhile, Zoe's popularity at the Washington Herald continues to grow.",
                season_id: hoc_s1)
Episode.create( number: 3, title: "Chapter 3", duration: "00:53",
                plot: "Francis heads for his hometown to deal with a crisis. Zoe negotiates the politics of being a journalist on the rise. Claire finds herself a new business partner.",
                season_id: hoc_s1)
Episode.create( number: 1, title: "Chapter 14", duration: "00:53",
                plot: "Frank prepares for his promotion to Vice President. Doug tries to erase all leads leading back to him and Frank. Claire fights back against Gillian. Zoe considers working with Frank again.",
                season_id: hoc_s2)
Episode.create( number: 2, title: "Chapter 15", duration: "00:53",
                plot: "Frank is announced as Vice President. The US meets with China. Jackie faces obstacles as she plans to run for new whip. Lucas looks into Zoe's death.",
                season_id: hoc_s2)
Episode.create( number: 3, title: "Chapter 16", duration: "00:53",
                plot: "The tension between Francis and Raymond Tusk increases while the situation in China is getting worse. A fight in the Senate puts Francis against the republicans.",
                season_id: hoc_s2)
Episode.create( number: 1, title: "Chapter 27", duration: "00:53",
                plot: "Frank's approval ratings have plummeted. Doug goes through rehab over his injury. Claire plans to run for Ambassador to the U.N.",
                season_id: hoc_s3)
Episode.create( number: 2, title: "Chapter 28", duration: "00:53",
                plot: "Claire's U.N. bid runs into trouble. Frank fights off mutiny with a bold address to the country.",
                season_id: hoc_s3)
Episode.create( number: 3, title: "Chapter 29", duration: "00:53",
                plot: "The Russian president's state visit becomes a cold war of wills.",
                season_id: hoc_s3)

# --- Actors ---
actors_himym = [
  "Josh Radnor",
  "Cobie Smulders",
  "Neil Patrick Harris",
  "Alyson Hannigan",
  "Jason Segel"
]
actors_himym.each do |name|
  Actor.create(name: name)
  himym.actors << Actor.find_by_name(name)
end

actors_pb = [
    "Dominic Purcell",
    "Wentworth Miller",
    "Robin Tunney",
    "Peter Stormare",
    "Amaury Nolasco",
    "Marshall Allman",
    "Wade Williams",
    "Paul Adelstein",
    "Robert Knepper",
    "Rockmond Dunbar",
    "Sarah Wayne Callies"
]
actors_pb.each do |name|
  Actor.create(name: name)
  pb.actors << Actor.find_by_name(name)
end

actors_twd = [
    "Andrew Lincolnoln",
    "Chandler Riggsggs",
    "Norman Reedusus",
    "Melissa McBrideride",
    "Lauren Cohann",
    "Steven Yeun",
    "Danai Guriraa"
]
actors_twd.each do |name|
  Actor.create(name: name)
  twd.actors << Actor.find_by_name(name)
end

actors_st = [
    "Winona Ryder",
    "David Harbour",
    "Finn Wolfhard",
    "Millie Bobby Brown",
    "Gaten Matarazzo",
    "Caleb McLaughlin"
]
actors_st.each do |name|
  Actor.create(name: name)
  st.actors << Actor.find_by_name(name)
end

actors_hoc = [
    "Kevin Spacey",
    "Robin Wright",
    "Michael Kelly"
]
actors_hoc.each do |name|
  Actor.create(name: name)
  hoc.actors << Actor.find_by_name(name)
end


# --- Subtitles ---
File.open("db/seeds/subtitles.txt", "r") do |f|
  f.each_line do |l|
    Subtitle.create( language: l.gsub("\n", ""))
  end
end

himym.subtitles << Subtitle.find_by_language("Spanish")
himym.subtitles << Subtitle.find_by_language("Italian")
himym.subtitles << Subtitle.find_by_language("English")
pb.subtitles << Subtitle.find_by_language("Spanish")
pb.subtitles << Subtitle.find_by_language("French")
twd.subtitles << Subtitle.find_by_language("Spanish")
twd.subtitles << Subtitle.find_by_language("German")
twd.subtitles << Subtitle.find_by_language("Italian")
st.subtitles << Subtitle.find_by_language("English")
st.subtitles << Subtitle.find_by_language("Spanish")
hoc.subtitles << Subtitle.find_by_language("English")
