Music.create!(
  [
    {
      music_name: "Hero",
      artist_name: 'Bonnie Tyler',
      category: "",
      year: 1984,
    },
    {
      music_name: "Sugar",
      artist_name: 'Maroon 5',
      category: "",
      year: 2015,
    },
    {
      music_name: "So Houston Feat. Lil Keke & Big Baby Flava",
      artist_name: 'Z-Ro',
      category: "",
      year: 2017,
    },
    {
      music_name: "You And I",
      artist_name: 'Stevie Wonder',
      category: "",
      year: 1972,
    },
  ]
)

Question.create!(
  [
    {
      music_id: 1,
      youtube_id: 'bWcASV2sey0',
      youtube_start_time: 51,
      youtube_end_time: 64,
      difficulty: 0,
      commentary: "解説",
      japanese: "ヒーローが欲しいのよ
      手を伸ばしてヒーローを求めてる
      朝の光が差し込んでくるまで"
    },
    {
      music_id: 2,
      youtube_id: '09R8_2nJtjg',
      youtube_start_time: 65,
      youtube_end_time: 81,
      difficulty: 2,
      commentary: "解説",
      japanese: "だからきみの甘さを、そう、僕に分けて 僕の人生に、きみの愛だけ足りないんだよ"
    },
    {
      music_id: 3,
      youtube_id: 'u1I-tEAQgKk',
      youtube_start_time: 102,
      youtube_end_time: 117,
      difficulty: 1,
      commentary: "解説",
      japanese: "南側 北側 東側"
    },
    {
      music_id: 4,
      youtube_id: 'zOW2UfvWWAE',
      youtube_start_time: 202,
      youtube_end_time: 232,
      difficulty: 0,
      commentary: "解説",
      japanese: "君と僕は．．．"
    },
  ]
)

Lyric.create!(
  [
    {
      question_id: 1,
      lyric: "Late at night I toss and I turn, and I dream of what I need
      兄が疲労〜アホに殴るヒロちゃんに遠慮がない〜"
    },
    {
      question_id: 2,
      lyric: "Ooh baby, 'cause a bullet don't care where you are
      I just wanna be there where you are
      And I gotta get one little taste
      生姜〜安い〜地下で取れたのに〜"
    },
    {
      question_id: 3,
      lyric: "And I'm so Houston
      Wickett Crickett would be proud of me
      I know my momma would be proud of me
      ３才 何才？ 1才"
    },
    {
      question_id: 4,
      lyric: "Cause' in my mind, you will stay here always, In love,
      言えない 言えない 言えない 言える〜"
    }
  ]
)

Choice.create!(
  [
    {
      question_id: 1,
      choice: 'A',
      is_answer: false,
    },
    {
      question_id: 1,
      choice: 'B',
      is_answer: false,
    },
    {
      question_id: 1,
      choice: 'C',
      is_answer: false,
    },
    {
      question_id: 1,
      choice: "I need a hero
      I'm holding out for a hero til the end of the night",
      is_answer: true,
    },
    {
      question_id: 2,
      choice: "Your sugar Yes, please
      Won't you come and put in down on me",
      is_answer: true,
    },
    {
      question_id: 3,
      choice: "South side North side East side",
      is_answer: true,
    },
    {
      question_id: 4,
      choice: "you and I, you and I, you and I, you and I",
      is_answer: true,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Matilda",
      artist_name: 'Harry Belafonte',
      category: "",
      year: 1958,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 5,
      youtube_id: 'o-RieGqVpv0',
      youtube_start_time: 14,
      youtube_end_time: 23,
      difficulty: 0,
      commentary: "解説",
      japanese: "HEY! マチルダ"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 5,
      lyric: "♬〜 閉園 待ってんだ"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 5,
      choice: "HEY! MATILDA",
      is_answer: true,
    }
  ]
)

Music.create!(
  [
    {
      music_name: "Smooth Criminal",
      artist_name: 'Michael Jackson',
      category: "",
      year: 1988,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 6,
      youtube_id: 'sFvENQBc-F8',
      youtube_start_time: 11,
      youtube_end_time: 26,
      difficulty: 2,
      commentary: "解説",
      japanese: "パン! 茶 宿直"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 6,
      lyric: "パン! 茶 宿直"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 6,
      choice: "Woo! Cha! Chuku Chuku!",
      is_answer: true,
    }
  ]
)

Music.create!(
  [
    {
      music_name: "Bat Dance",
      artist_name: 'Prince',
      category: "",
      year: 1989,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 7,
      youtube_id: 'ulOLYnOthIw',
      youtube_start_time: 334,
      youtube_end_time: 348,
      difficulty: 2,
      commentary: "解説",
      japanese: "ダンスを止めるな"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 7,
      lyric: "Power 「I'm not gonna kill you」 Soul Let's do it 「I'm batman」 Batman 農協牛乳"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 7,
      choice: "Don't stop dancin'",
      is_answer: true,
    }
  ]
)

Music.create!(
  [
    {
      music_name: "All I Want",
      artist_name: 'The Offspring',
      category: "",
      year: 1997,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 8,
      youtube_id: 'us8OhI-OTHg',
      youtube_start_time: 23,
      youtube_end_time: 39,
      difficulty: 1,
      commentary: "解説",
      japanese: "それだけが俺の望み"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 8,
      lyric: "Leave me alone, asking a lot I don't wanna be controlled
      小籠包 小籠包 小籠包 小籠包"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 8,
      choice: "That's all I want",
      is_answer: true,
    }
  ]
)

Music.create!(
  [
    {
      music_name: "Symphony",
      artist_name: 'Clean Bandit',
      category: "",
      year: 2017,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 9,
      youtube_id: 'aatr_2MstrI',
      youtube_start_time: 77,
      youtube_end_time: 93,
      difficulty: 0,
      commentary: "解説",
      japanese: "あなたのシンフォニーの一部になりたいの  きつく抱きしめて 離さないでくれる?"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 9,
      lyric: "And when you're gone, I feel incomplete
      So, if you want the truth
      Just wanna be part of your ソファーに イヤホンみたいな なめこ"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 9,
      choice: "symphony Will you hold me tight and not let go?",
      is_answer: true,
    }
  ]
)


Music.create!(
  [
    {
      music_name: "Somebody To Love",
      artist_name: 'Justin Bieber',
      category: "",
      year: 2010,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 10,
      youtube_id: 'SOI4OF7iIr4',
      youtube_start_time: 193,
      youtube_end_time: 211,
      difficulty: 1,
      commentary: "解説",
      japanese: "どこにいるのかな?（まだ出会う前の彼女が）"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 10,
      lyric: "I need somebody, I need somebody, I need somebody,
      医師呼んで 医師呼んで〜 医師呼んで〜 医師呼んで〜"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 10,
      choice: "Is she out there?",
      is_answer: true,
    }
  ]
)


Music.create!(
  [
    {
      music_name: "Top of the World",
      artist_name: 'Carpenters',
      category: "",
      year: 1972,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 11,
      youtube_id: '3hyFB6SA7b4',
      youtube_start_time: 84,
      youtube_end_time: 101,
      difficulty: 0,
      commentary: "解説",
      japanese: "そよ風の感触が"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 11,
      lyric: "Something in the wind has learned my name
      And it's tellin' me that things are not the same
      In the leaves on the trees, and the
      焼酎とブリ〜"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 11,
      choice: "touch of the breeze",
      is_answer: true,
    }
  ]
)


Music.create!(
  [
    {
      music_name: "Here I Go Again",
      artist_name: 'Mamma Mia!',
      category: "",
      year: 2008,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 12,
      youtube_id: 'DUjB9LTtzGg',
      youtube_start_time: 119,
      youtube_end_time: 135,
      difficulty: 1,
      commentary: "解説",
      japanese: "どうしたら抵抗できるの？"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 12,
      lyric: "Just once look and I can hear a bell ring
      One more look and I forget everything  Mamma mia, here I go again
      My my, ハゲ ナルシスト"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 12,
      choice: "how can I resist you?",
      is_answer: true,
    }
  ]
)


Music.create!(
  [
    {
      music_name: "Here Comes Sickness",
      artist_name: 'Mudhoney',
      category: "",
      year: 1988,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 13,
      youtube_id: 'J6h1Rs83VuY',
      youtube_start_time: 186,
      youtube_end_time: 202,
      difficulty: 2,
      commentary: "解説",
      japanese: "私のパパの車で病気になる"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 13,
      lyric: "All the neighborhood dogs Should be drunk in the bar
      レンコン好きです！ レンコン好きです！ レンコン好きです！ 今誰すかー？
      "
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 13,
      choice: "There goes sickness In my daddy's car?",
      is_answer: true,
    }
  ]
)


Music.create!(
  [
    {
      music_name: "Bossa Nova Baby",
      artist_name: 'Elvis Presley',
      category: "",
      year: 1963,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 14,
      youtube_id: 'jTxvcPPsmb0',
      youtube_start_time: 91,
      youtube_end_time: 99,
      difficulty: 2,
      commentary: "解説",
      japanese: "外に出てちょっと涼もうよ"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 14,
      lyric: "I said, Come on baby, it's hot in here お酢をください"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 14,
      choice: "And it's oh so cool outside",
      is_answer: true,
    }
  ]
)


Music.create!(
  [
    {
      music_name: "Mailbox Arson",
      artist_name: 'Alexisonfire',
      category: "",
      year: 2006,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 15,
      youtube_id: '3BPHoqKU9ag',
      youtube_start_time: 38,
      youtube_end_time: 53,
      difficulty: 2,
      commentary: "解説",
      japanese: "この町ではメールは安全ではありません"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 15,
      lyric: "But I don't think I can stay for long There's lots more mail that's not yet ash 嫁ブサイクでした！！嫁ブサイクでした！！嫁ブサイクでした！！"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 15,
      choice: "Your mail's not safe in this town",
      is_answer: true,
    }
  ]
)


Music.create!(
  [
    {
      music_name: "Sinner",
      artist_name: 'Judas Priest',
      category: "",
      year: 1977,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 16,
      youtube_id: 'zC8qK-WDALQ',
      youtube_start_time: 114,
      youtube_end_time: 123,
      difficulty: 2,
      commentary: "解説",
      japanese: "全ての者が呪われている、皆が地獄に落ちるのだ 背徳の騎士によって!"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 16,
      lyric: "母さんが言う、「こういうパーマは変」だと 死のう！！"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 16,
      choice: "Curse and damn you all, you'll fall by the hand of the. Sinner!",
      is_answer: true,
    }
  ]
)


Music.create!(
  [
    {
      music_name: "Too Fast For Love",
      artist_name: 'Mötley Crüe',
      category: "",
      year: 1981,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 17,
      youtube_id: 'lY_XBWKFxR4',
      youtube_start_time: 57,
      youtube_end_time: 62,
      difficulty: 1,
      commentary: "解説",
      japanese: "ドリームマシン、めちゃくちゃカッコいい 彼女は夜を明かすことができる"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 17,
      lyric: "じんましん それは苦しくて たまらない"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 17,
      choice: "Dream machine, so damn cool
      She can turn on the night",
      is_answer: true,
    }
  ]
)


Music.create!(
  [
    {
      music_name: "Stupid Marriage",
      artist_name: 'The Specials',
      category: "",
      year: 1979,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 18,
      youtube_id: 'GNyrYiljeIw',
      youtube_start_time: 121,
      youtube_end_time: 132,
      difficulty: 2,
      commentary: "解説",
      japanese: "私は一つの結論に達しました"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 18,
      lyric: "And she left you and married someone else.
      So you got drunk,
      And smashed up your ex-girlfriend's property. 
      こら待て！ 早く来んとワンタン来るじゃん"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 18,
      choice: "I have come to one conclusion",
      is_answer: true,
    }
  ]
)


Music.create!(
  [
    {
      music_name: "Somebody To Love",
      artist_name: 'Queen',
      category: "",
      year: 1976,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 19,
      youtube_id: 'GNyrYiljeIw',
      youtube_start_time: 121,
      youtube_end_time: 132,
      difficulty: 0,
      commentary: "解説",
      japanese: "だけど、みんな僕を凹ませたがるんだ"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 19,
      lyric: "He works hard Everyday I try and I try and I try
      ワシャ コケた"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 19,
      choice: "But everybody wants to put me down",
      is_answer: true,
    }
  ]
)