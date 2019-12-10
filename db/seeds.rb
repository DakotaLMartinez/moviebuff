# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.first_or_create(name: "Dakota")

# Seed movies
movies = {
  "results": [
    {
      "popularity": 326.047,
      "vote_count": 849,
      "video": false,
      "poster_path": "/qdfARIhgpgZOBh3vfNhWS4hmSo3.jpg",
      "id": 330457,
      "adult": false,
      "backdrop_path": "/xJWPZIYOEFIjZpBL7SVBGnzRYXp.jpg",
      "original_language": "en",
      "original_title": "Frozen II",
      "genre_ids": [
        16,
        10402,
        10751
      ],
      "title": "Frozen II",
      "vote_average": 7.1,
      "overview": "Elsa, Anna, Kristoff and Olaf head far into the forest to learn the truth about an ancient mystery of their kingdom.",
      "release_date": "2019-11-20"
    },
    {
      "popularity": 288.09,
      "vote_count": 116,
      "video": false,
      "poster_path": "/jyw8VKYEiM1UDzPB7NsisUgBeJ8.jpg",
      "id": 512200,
      "adult": false,
      "backdrop_path": "/zTxHf9iIOCqRbxvl8W5QYKrsMLq.jpg",
      "original_language": "en",
      "original_title": "Jumanji: The Next Level",
      "genre_ids": [
        28,
        12,
        35,
        14
      ],
      "title": "Jumanji: The Next Level",
      "vote_average": 7.1,
      "overview": "Spencer returns to the world of Jumanji, prompting his friends, his grandfather and his grandfather’s friend to enter a different and more dangerous version to save him.",
      "release_date": "2019-12-04"
    },
    {
      "popularity": 265.028,
      "vote_count": 1115,
      "video": false,
      "poster_path": "/xJUILftRf6TJxloOgrilOTJfeOn.jpg",
      "id": 419704,
      "adult": false,
      "backdrop_path": "/5BwqwxMEjeFtdknRV792Svo0K1v.jpg",
      "original_language": "en",
      "original_title": "Ad Astra",
      "genre_ids": [
        878
      ],
      "title": "Ad Astra",
      "vote_average": 6.1,
      "overview": "An astronaut travels to the outer edges of the solar system to find his father and unravel a mystery that threatens the survival of Earth. In doing so, he uncovers secrets which challenge the nature of human existence and our place in the cosmos.",
      "release_date": "2019-09-17"
    },
    {
      "popularity": 208.981,
      "vote_count": 1182,
      "video": false,
      "poster_path": "/mbm8k3GFhXS0ROd9AD1gqYbIFbM.jpg",
      "id": 398978,
      "adult": false,
      "backdrop_path": "/ww5aGS5H2tUtckxFFNOJE2790S7.jpg",
      "original_language": "en",
      "original_title": "The Irishman",
      "genre_ids": [
        80,
        18,
        36
      ],
      "title": "The Irishman",
      "vote_average": 8,
      "overview": "Pennsylvania, 1956. Frank Sheeran, a war veteran of Irish origin who works as a truck driver, accidentally meets mobster Russell Bufalino. Once Frank becomes his trusted man, Bufalino sends him to Chicago with the task of helping Jimmy Hoffa, a powerful union leader related to organized crime, with whom Frank will maintain a close friendship for nearly twenty years.",
      "release_date": "2019-11-01"
    },
    {
      "popularity": 161.016,
      "vote_count": 718,
      "video": false,
      "poster_path": "/kTQ3J8oTTKofAVLYnds2cHUz9KO.jpg",
      "id": 522938,
      "adult": false,
      "backdrop_path": "/spYx9XQFODuqEVoPpvaJI1ksAVt.jpg",
      "original_language": "en",
      "original_title": "Rambo: Last Blood",
      "genre_ids": [
        28,
        18,
        53
      ],
      "title": "Rambo: Last Blood",
      "vote_average": 5.9,
      "overview": "After fighting his demons for decades, John Rambo now lives in peace on his family ranch in Arizona, but his rest is interrupted when Gabriela, the granddaughter of his housekeeper María, disappears after crossing the border into Mexico to meet her biological father. Rambo, who has become a true father figure for Gabriela over the years, undertakes a desperate and dangerous journey to find her.",
      "release_date": "2019-09-19"
    },
    {
      "popularity": 127.297,
      "vote_count": 787,
      "video": false,
      "poster_path": "/vqzNJRH4YyquRiWxCCOH0aXggHI.jpg",
      "id": 290859,
      "adult": false,
      "backdrop_path": "/riTANvQ8GKmQbgtC1ps3OfkU43A.jpg",
      "original_language": "en",
      "original_title": "Terminator: Dark Fate",
      "genre_ids": [
        28,
        878
      ],
      "title": "Terminator: Dark Fate",
      "vote_average": 6.2,
      "overview": "Decades after Sarah Connor prevented Judgment Day, a lethal new Terminator is sent to eliminate the future leader of the resistance. In a fight to save mankind, battle-hardened Sarah Connor teams up with an unexpected ally and an enhanced super soldier to stop the deadliest Terminator yet.",
      "release_date": "2019-10-23"
    },
    {
      "popularity": 107.316,
      "vote_count": 2376,
      "video": false,
      "poster_path": "/zfE0R94v1E8cuKAerbskfD3VfUt.jpg",
      "id": 474350,
      "adult": false,
      "backdrop_path": "/8moTOzunF7p40oR5XhlDvJckOSW.jpg",
      "original_language": "en",
      "original_title": "It Chapter Two",
      "genre_ids": [
        18,
        27
      ],
      "title": "It Chapter Two",
      "vote_average": 6.8,
      "overview": "27 years after overcoming the malevolent supernatural entity Pennywise, the former members of the Losers' Club, who have grown up and moved away from Derry, are brought back together by a devastating phone call.",
      "release_date": "2019-09-04"
    },
    {
      "popularity": 102.369,
      "vote_count": 242,
      "video": false,
      "poster_path": "/20djTLqppfBx5WYA67Y300S6aPD.jpg",
      "id": 431580,
      "adult": false,
      "backdrop_path": "/tLCDKsXo6D84IVFanoElosSEKdp.jpg",
      "original_language": "en",
      "original_title": "Abominable",
      "genre_ids": [
        12,
        16,
        35,
        10751
      ],
      "title": "Abominable",
      "vote_average": 7,
      "overview": "A group of misfits encounter a young Yeti named Everest, and they set off to reunite the magical creature with his family on the mountain of his namesake.",
      "release_date": "2019-09-19"
    },
    {
      "popularity": 104.581,
      "vote_count": 415,
      "video": false,
      "poster_path": "/pThyQovXQrw2m0s9x82twj48Jq4.jpg",
      "id": 546554,
      "adult": false,
      "backdrop_path": "/AbRYlvwAKHs0YuyNO6NX9ofq4l6.jpg",
      "original_language": "en",
      "original_title": "Knives Out",
      "genre_ids": [
        35,
        9648,
        53
      ],
      "title": "Knives Out",
      "vote_average": 7.9,
      "overview": "When renowned crime novelist Harlan Thrombey is found dead at his estate just after his 85th birthday, the inquisitive and debonair Detective Benoit Blanc is mysteriously enlisted to investigate. From Harlan's dysfunctional family to his devoted staff, Blanc sifts through a web of red herrings and self-serving lies to uncover the truth behind Harlan's untimely death.",
      "release_date": "2019-11-27"
    },
    {
      "popularity": 100.753,
      "vote_count": 634,
      "video": false,
      "poster_path": "/zBhv8rsLOfpFW2M5b6wW78Uoojs.jpg",
      "id": 540901,
      "adult": false,
      "backdrop_path": "/mSQjVoZJaZkaHpdLIahh04bfGDr.jpg",
      "original_language": "en",
      "original_title": "Hustlers",
      "genre_ids": [
        35,
        80,
        18
      ],
      "title": "Hustlers",
      "vote_average": 6.2,
      "overview": "A crew of savvy former strip club employees band together to turn the tables on their Wall Street clients.",
      "release_date": "2019-09-12"
    },
    {
      "popularity": 85.207,
      "vote_count": 324,
      "video": false,
      "poster_path": "/bm6zKJjKYKrIy3dcnOLk0kF85cl.jpg",
      "id": 492188,
      "adult": false,
      "backdrop_path": "/4PCO7tewIGnE6ySjVf2DbJ3pjqq.jpg",
      "original_language": "en",
      "original_title": "Marriage Story",
      "genre_ids": [
        18,
        10749
      ],
      "title": "Marriage Story",
      "vote_average": 8.3,
      "overview": "A stage director and an actor struggle through a grueling, coast-to-coast divorce that pushes them to their personal extremes.",
      "release_date": "2019-11-06"
    },
    {
      "popularity": 82.664,
      "vote_count": 7,
      "video": false,
      "poster_path": "/350gCL2oy9gWixfOhblcWipqOfj.jpg",
      "id": 641790,
      "adult": false,
      "backdrop_path": "/cFzDMJG8gSPLbGn3gzLgrTARwTz.jpg",
      "original_language": "en",
      "original_title": "Trauma Center",
      "genre_ids": [
        28,
        53
      ],
      "title": "Trauma Center",
      "vote_average": 6.2,
      "overview": "Lt. Wakes is a vengeful police detective determined to solve the murders of his partner and an informant, and joins forces with a witness injured during the shootings. After the killers pursue the witness across the abandoned floor of a hospital, she confirms Wakes's worst fears.",
      "release_date": "2019-12-06"
    },
    {
      "popularity": 62.95,
      "vote_count": 99,
      "video": false,
      "poster_path": "/4E2lyUGLEr3yH4q6kJxPkQUhX7n.jpg",
      "id": 568012,
      "adult": false,
      "backdrop_path": "/iGnCzXEx0cFlUbpyAMeHwHWhPhx.jpg",
      "original_language": "ja",
      "original_title": "ワンピーススタンピード",
      "genre_ids": [
        28,
        12,
        16
      ],
      "title": "One Piece: Stampede",
      "vote_average": 7.3,
      "overview": "One Piece: Stampede is a stand-alone film that celebrates the anime's 20th Anniversary and takes place outside the canon of the \"One Piece\" TV series. Monkey D. Luffy and his Straw Hat pirate crew are invited to a massive Pirate Festival that brings many of the most iconic characters from throughout the franchise to participate in competition with the Straw Hats to find Roger's treasure. It also pits the Straw Hats against a new enemy named Bullet, a former member of Roger's crew.",
      "release_date": "2019-08-09"
    },
    {
      "popularity": 71.686,
      "vote_count": 801,
      "video": false,
      "poster_path": "/uTALxjQU8e1lhmNjP9nnJ3t2pRU.jpg",
      "id": 453405,
      "adult": false,
      "backdrop_path": "/c3F4P2oauA7IQmy4hM0OmRt2W7d.jpg",
      "original_language": "en",
      "original_title": "Gemini Man",
      "genre_ids": [
        28,
        14,
        53
      ],
      "title": "Gemini Man",
      "vote_average": 5.7,
      "overview": "Ageing assassin, Henry Brogen tries to get out of the business but finds himself in the ultimate battle—fighting his own clone who is 25 years younger than him, and at the peak of his abilities.",
      "release_date": "2019-10-02"
    },
    {
      "popularity": 79.24,
      "vote_count": 1666,
      "video": false,
      "poster_path": "/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg",
      "id": 496243,
      "adult": false,
      "backdrop_path": "/TU9NIjwzjoKPwQHoHshkFcQUCG.jpg",
      "original_language": "ko",
      "original_title": "기생충",
      "genre_ids": [
        35,
        18
      ],
      "title": "Parasite",
      "vote_average": 8.5,
      "overview": "All unemployed, Ki-taek's family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.",
      "release_date": "2019-05-30"
    },
    {
      "popularity": 69.564,
      "vote_count": 534,
      "video": false,
      "poster_path": "/vOl6shtL0wknjaIs6JdKCpcHvg8.jpg",
      "id": 567609,
      "adult": false,
      "backdrop_path": "/j8uPZSPjKYzHlN2B4NhPQVWWZ5x.jpg",
      "original_language": "en",
      "original_title": "Ready or Not",
      "genre_ids": [
        35,
        27,
        9648,
        53
      ],
      "title": "Ready or Not",
      "vote_average": 6.8,
      "overview": "A bride's wedding night takes a sinister turn when her eccentric new in-laws force her to take part in a terrifying game.",
      "release_date": "2019-08-21"
    },
    {
      "popularity": 61.739,
      "vote_count": 554,
      "video": false,
      "poster_path": "/6ApDtO7xaWAfPqfi2IARXIzj8QS.jpg",
      "id": 359724,
      "adult": false,
      "backdrop_path": "/mn9k8zapebAbCqsiKf24juhXjjx.jpg",
      "original_language": "en",
      "original_title": "Ford v Ferrari",
      "genre_ids": [
        28,
        18,
        36
      ],
      "title": "Ford v Ferrari",
      "vote_average": 7.9,
      "overview": "American car designer Carroll Shelby and the British-born driver Ken Miles work together to battle corporate interference, the laws of physics, and their own personal demons to build a revolutionary race car for Ford Motor Company and take on the dominating race cars of Enzo Ferrari at the 24 Hours of Le Mans in France in 1966.",
      "release_date": "2019-11-13"
    },
    {
      "popularity": 60.623,
      "vote_count": 258,
      "video": false,
      "poster_path": "/pWt1iRuhNpeVDNP2QiUT2C5OiBt.jpg",
      "id": 535544,
      "adult": false,
      "backdrop_path": "/mFcfdnAYaQQhXhKcoITiDYtuO5b.jpg",
      "original_language": "en",
      "original_title": "Downton Abbey",
      "genre_ids": [
        18,
        36
      ],
      "title": "Downton Abbey",
      "vote_average": 7.1,
      "overview": "The beloved Crawleys and their intrepid staff prepare for the most important moment of their lives. A royal visit from the King and Queen of England will unleash scandal, romance and intrigue that will leave the future of Downton hanging in the balance.",
      "release_date": "2019-09-12"
    },
    {
      "popularity": 57.729,
      "vote_count": 53,
      "video": false,
      "poster_path": "/MBiKqTsouYqAACLYNDadsjhhC0.jpg",
      "id": 486589,
      "adult": false,
      "backdrop_path": "/bga3i5jcejBekr2FCGJga1fYCh.jpg",
      "original_language": "en",
      "original_title": "Red Shoes and the Seven Dwarfs",
      "genre_ids": [
        16,
        10749
      ],
      "title": "Red Shoes and the Seven Dwarfs",
      "vote_average": 6,
      "overview": "Princes who have been turned into Dwarfs seek the red shoes of a lady in order to break the spell, although it will not be easy.",
      "release_date": "2019-07-25"
    },
    {
      "popularity": 57.415,
      "vote_count": 782,
      "video": false,
      "poster_path": "/fapXd3v9qTcNBTm39ZC4KUVQDNf.jpg",
      "id": 423204,
      "adult": false,
      "backdrop_path": "/k2WyDw2NTUIWnuEs5gT7wgrCQg6.jpg",
      "original_language": "en",
      "original_title": "Angel Has Fallen",
      "genre_ids": [
        28,
        53
      ],
      "title": "Angel Has Fallen",
      "vote_average": 5.8,
      "overview": "After a treacherous attack, Secret Service agent Mike Banning is charged with attempting to assassinate President Trumbull. Chased by his own colleagues and the FBI, Banning begins a race against the clock to clear his name.",
      "release_date": "2019-08-21"
    }
  ],
  "page": 1,
  "total_results": 1445,
  "dates": {
    "maximum": "2019-12-08",
    "minimum": "2019-10-21"
  },
  "total_pages": 73
}

results = movies[:results]

results.each do |movie_hash|
  wanted_info = movie_hash.select{|k,v| [:title, :overview, :original_language, :release_date, :vote_average, :poster_path, :backdrop_path].include?(k) }
  Movie.find_or_create_by(wanted_info)
end
binding.pry
