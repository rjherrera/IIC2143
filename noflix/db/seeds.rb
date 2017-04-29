# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# --- Directors ---
directors_list = [
  "Pamela Fryman"
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
                    owner_id: nil)
end

# --- Seasons ---
himym = TvShow.find_by_title("How I Met Your Mother").id
Season.create(number: 1, tv_show_id: himym)
Season.create(number: 2, tv_show_id: himym)
Season.create(number: 3, tv_show_id: himym)

# --- Episodes ---
himym_s1 = Season.find_by(number: 1, tv_show_id: himym).id
himym_s2 = Season.find_by(number: 2, tv_show_id: himym).id
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

# --- Actors ---
actors_list = [
  "Josh Radnor",
  "Cobie Smulders",
  "Neil Patrick Harris",
  "Alyson Hannigan",
  "Jason Segel"
]
actors_list.each do |name|
  Actor.create( name: name, tv_shows: TvShow.where(title: 'How I Met Your Mother') )
end

# --- Subtitles ---
subtitles_list = [
    "Spanish",
    "French",
    "Italian",
    "German"
]
subtitles_list.each do |language|
  Subtitle.create( language: language, tv_shows: TvShow.where(title: 'How I Met Your Mother') )
end
