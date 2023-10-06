# Music.create!(
#   [
#     {
#       music_name: "Hero",
#       artist_name: 'Bonnie Tyler',
#       category: "",
#       year: 1984,
#     },
#     {
#       music_name: "Sugar",
#       artist_name: 'Maroon 5',
#       category: "",
#       year: 2015,
#     },
#     {
#       music_name: "So Houston Feat. Lil Keke & Big Baby Flava",
#       artist_name: 'Z-Ro',
#       category: "",
#       year: 2017,
#     },
#     {
#       music_name: "You And I",
#       artist_name: 'Stevie Wonder',
#       category: "",
#       year: 1972,
#     },
#   ]
# )

# Question.create!(
#   [
#     {
#       music_id: 1,
#       youtube_id: 'bWcASV2sey0',
#       youtube_start_time: 51,
#       youtube_end_time: 64,
#       difficulty: 0,
#       # commentary: "「holding out for a hero」 特定の種類の助けや救いを待ち続けているという強い願望や期待を表現する表現です",
#       japanese: "ヒーローが欲しいのよ 手を伸ばしてヒーローを求めてる 朝の光が差し込んでくるまで"
#     },
#     {
#       music_id: 2,
#       youtube_id: '09R8_2nJtjg',
#       youtube_start_time: 65,
#       youtube_end_time: 81,
#       difficulty: 2,
#       # commentary: "解説",
#       japanese: "だからきみの甘さを、そう、僕に分けて 僕の人生に、きみの愛だけ足りないんだよ"
#     },
#     {
#       music_id: 3,
#       youtube_id: 'u1I-tEAQgKk',
#       youtube_start_time: 102,
#       youtube_end_time: 117,
#       difficulty: 1,
#       # commentary: "解説",
#       japanese: "南側 北側 東側"
#     },
#     {
#       music_id: 4,
#       youtube_id: 'zOW2UfvWWAE',
#       youtube_start_time: 202,
#       youtube_end_time: 232,
#       difficulty: 0,
#       # commentary: "解説",
#       japanese: "君と僕は．．．"
#     },
#   ]
# )

# Lyric.create!(
#   [
#     {
#       question_id: 1,
#       lyric: "Late at night I toss and I turn, and I dream of what I need"
#     },
#     {
#       question_id: 1,
#       lyric: "兄が疲労〜アホに殴るヒロちゃんに遠慮がない〜"
#     },
#     {
#       question_id: 2,
#       lyric: "Ooh baby, 'cause a bullet don't care where you are
#       I just wanna be there where you are
#       And I gotta get one little taste
#       生姜〜安い〜地下で取れたのに〜"
#     },
#     {
#       question_id: 3,
#       lyric: "And I'm so Houston
#       Wickett Crickett would be proud of me
#       I know my momma would be proud of me
#       ３才 何才？ 1才"
#     },
#     {
#       question_id: 4,
#       lyric: "Cause' in my mind, you will stay here always, In love,
#       言えない 言えない 言えない 言える〜"
#     }
#   ]
# )

# Choice.create!(
#   [
#     {
#       question_id: 1,
#       choice: "兄が疲労〜アホに殴るヒロちゃんに遠慮がない〜",
#       is_answer: false,
#     },
#     {
#       question_id: 1,
#       choice: "I wanna hero I'm holding out for a hero til the end of the light",
#       is_answer: false,
#     },
#     {
#       question_id: 1,
#       choice: "I wanna hero I'm holding out for a hero til the end of the night",
#       is_answer: false,
#     },
#     {
#       question_id: 1,
#       choice: "I need a hero I'm holding out for a hero til the end of the night",
#       is_answer: true,
#     },
#     {
#       question_id: 2,
#       choice: "生姜〜安い〜地下で取れたのに〜",
#       is_answer: false,
#     },
#     {
#       question_id: 2,
#       choice: "Your love Yasui, please Won't you come and put in down on me",
#       is_answer: false,
#     },
#     {
#       question_id: 2,
#       choice: "Your sugar Yes, please Won't you come and put in down on me",
#       is_answer: true,
#     },
#     {
#       question_id: 2,
#       choice: "Your honey Yes, please Won't you come and put in down on me",
#       is_answer: false,
#     },
#     {
#       question_id: 3,
#       choice: "３才 何才？ 1才",
#       is_answer: false,
#     },
#     {
#       question_id: 3,
#       choice: "South side North side East side",
#       is_answer: true,
#     },
#     {
#       question_id: 3,
#       choice: " South side No side East side ",
#       is_answer: false,
#     },
#     {
#       question_id: 3,
#       choice: "Soul side North side East side",
#       is_answer: false,
#     },
#     {
#       question_id: 4,
#       choice: "言えない 言えない 言えない 言える〜",
#       is_answer: false,
#     },
#     {
#       question_id: 4,
#       choice: " you and I, you and I, you and I, you and I ",
#       is_answer: true,
#     },
#     {
#       question_id: 4,
#       choice: "you and die, you and die, you and die, you and die",
#       is_answer: false,
#     },
#     {
#       question_id: 4,
#       choice: "you and nine, you and nine, you and nine, you and nine",
#       is_answer: false,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "Matilda",
#       artist_name: 'Harry Belafonte',
#       category: "",
#       year: 1958,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 5,
#       youtube_id: 'o-RieGqVpv0',
#       youtube_start_time: 14,
#       youtube_end_time: 23,
#       difficulty: 0,
#       # commentary: "解説",
#       japanese: "HEY! マチルダ"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 5,
#       lyric: "♬〜 閉園 待ってんだ"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 5,
#       choice: "閉園 待ってんだ",
#       is_answer: false,
#     },
#     {
#       question_id: 5,
#       choice: "HEY! Wating",
#       is_answer: false,
#     },
#     {
#       question_id: 5,
#       choice: "Heien! Wating",
#       is_answer: false,
#     },
#     {
#       question_id: 5,
#       choice: "HEY! MATILDA",
#       is_answer: true,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "Smooth Criminal",
#       artist_name: 'Michael Jackson',
#       category: "",
#       year: 1988,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 6,
#       youtube_id: 'sFvENQBc-F8',
#       youtube_start_time: 11,
#       youtube_end_time: 26,
#       difficulty: 2,
#       # commentary: "解説",
#       japanese: "パン! 茶 宿直"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 6,
#       lyric: "パン! 茶 宿直"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 6,
#       choice: "パン! 茶 宿直",
#       is_answer: false,
#     },
#     {
#       question_id: 6,
#       choice: "Woo! Cha! Chuku Chuku!",
#       is_answer: true,
#     },
#     {
#       question_id: 6,
#       choice: "Pan! Cha! Chuku Chuku!",
#       is_answer: false,
#     },
#     {
#       question_id: 6,
#       choice: "Pan! Cha! Chuku Choku!",
#       is_answer: false,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "Bat Dance",
#       artist_name: 'Prince',
#       category: "",
#       year: 1989,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 7,
#       youtube_id: 'ulOLYnOthIw',
#       youtube_start_time: 334,
#       youtube_end_time: 348,
#       difficulty: 2,
#       # commentary: "解説",
#       japanese: "ダンスを止めるな"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 7,
#       lyric: "Power 「I'm not gonna kill you」 Soul Let's do it 「I'm batman」 Batman 農協牛乳"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 7,
#       choice: "農協牛乳",
#       is_answer: false,
#     },
#     {
#       question_id: 7,
#       choice: "Don't stop dancin'",
#       is_answer: true,
#     },
#     {
#       question_id: 7,
#       choice: "Don't stop cycling",
#       is_answer: false,
#     },
#     {
#       question_id: 7,
#       choice: "Don't stop washing",
#       is_answer: false,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "All I Want",
#       artist_name: 'The Offspring',
#       category: "",
#       year: 1997,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 8,
#       youtube_id: 'us8OhI-OTHg',
#       youtube_start_time: 23,
#       youtube_end_time: 39,
#       difficulty: 1,
#       # commentary: "解説",
#       japanese: "それだけが俺の望み"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 8,
#       lyric: "Leave me alone, asking a lot I don't wanna be controlled
#       小籠包 小籠包 小籠包 小籠包"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 8,
#       choice: "小籠包",
#       is_answer: false,
#     },
#     {
#       question_id: 8,
#       choice: " Sho ron pow ",
#       is_answer: false,
#     },
#     {
#       question_id: 8,
#       choice: "That's all I want",
#       is_answer: true,
#     },
#     {
#       question_id: 8,
#       choice: "That's a I want",
#       is_answer: false,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "Symphony",
#       artist_name: 'Clean Bandit',
#       category: "",
#       year: 2017,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 9,
#       youtube_id: 'aatr_2MstrI',
#       youtube_start_time: 77,
#       youtube_end_time: 93,
#       difficulty: 0,
#       # commentary: "解説",
#       japanese: "あなたのシンフォニーの一部になりたいの  きつく抱きしめて 離さないでくれる?"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 9,
#       lyric: "And when you're gone, I feel incomplete
#       So, if you want the truth
#       I just wanna be part of your ソファーに イヤホンみたいな なめこ"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 9,
#       choice: "ソファーに イヤホンみたいな なめこ",
#       is_answer: false,
#     },
#     {
#       question_id: 9,
#       choice: " sofa Will you hold me tight and not let go ?",
#       is_answer: false,
#     },
#     {
#       question_id: 9,
#       choice: " symphony Will you hold me tight and nameko? ",
#       is_answer: false,
#     },
#     {
#       question_id: 9,
#       choice: "symphony Will you hold me tight and not let go?",
#       is_answer: true,
#     },
#   ]
# )


# Music.create!(
#   [
#     {
#       music_name: "Somebody To Love",
#       artist_name: 'Justin Bieber',
#       category: "",
#       year: 2010,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 10,
#       youtube_id: 'SOI4OF7iIr4',
#       youtube_start_time: 193,
#       youtube_end_time: 211,
#       difficulty: 1,
#       # commentary: "解説",
#       japanese: "どこにいるのかな?（まだ出会う前の彼女が）"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 10,
#       lyric: "I need somebody, I need somebody, I need somebody,
#       医師呼んで 医師呼んで〜 医師呼んで〜 医師呼んで〜"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 10,
#       choice: "医師呼んで〜",
#       is_answer: false,
#     },
#     {
#       question_id: 10,
#       choice: "Is he out there?",
#       is_answer: false,
#     },
#     {
#       question_id: 10,
#       choice: "Is she out there?",
#       is_answer: true,
#     },
#     {
#       question_id: 10,
#       choice: "doctor out there?",
#       is_answer: false,
#     },
#   ]
# )


# Music.create!(
#   [
#     {
#       music_name: "Top of the World",
#       artist_name: 'Carpenters',
#       category: "",
#       year: 1972,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 11,
#       youtube_id: '3hyFB6SA7b4',
#       youtube_start_time: 84,
#       youtube_end_time: 101,
#       difficulty: 0,
#       # commentary: "解説",
#       japanese: "そよ風の感触が"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 11,
#       lyric: "Something in the wind has learned my name
#       And it's tellin' me that things are not the same
#       In the leaves on the trees, and the
#       焼酎とブリ〜"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 11,
#       choice: "焼酎とブリ〜",
#       is_answer: false,
#     },
#     {
#       question_id: 11,
#       choice: "touch of the breeze",
#       is_answer: true,
#     },
#     {
#       question_id: 11,
#       choice: " touch of the buri ",
#       is_answer: false,
#     },
#     {
#       question_id: 11,
#       choice: "show to the breeze",
#       is_answer: false,
#     },
#   ]
# )


# Music.create!(
#   [
#     {
#       music_name: "Here I Go Again",
#       artist_name: 'Mamma Mia!',
#       category: "",
#       year: 2008,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 12,
#       youtube_id: 'DUjB9LTtzGg',
#       youtube_start_time: 119,
#       youtube_end_time: 135,
#       difficulty: 1,
#       # commentary: "解説",
#       japanese: "どうしたら抵抗できるの？"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 12,
#       lyric: "Just once look and I can hear a bell ring
#       One more look and I forget everything  Mamma mia, here I go again
#       My my, ハゲ ナルシスト"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 12,
#       choice: "ハゲ ナルシスト",
#       is_answer: false,
#     },
#     {
#       question_id: 12,
#       choice: "how can I narcissist?",
#       is_answer: false,
#     },
#     {
#       question_id: 12,
#       choice: "how can I resist you?",
#       is_answer: true,
#     },
#     {
#       question_id: 12,
#       choice: "Baldness I resist you?",
#       is_answer: false,
#     },
#   ]
# )


# Music.create!(
#   [
#     {
#       music_name: "Here Comes Sickness",
#       artist_name: 'Mudhoney',
#       category: "",
#       year: 1988,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 13,
#       youtube_id: 'J6h1Rs83VuY',
#       youtube_start_time: 186,
#       youtube_end_time: 202,
#       difficulty: 2,
#       # commentary: "解説",
#       japanese: "私のパパの車で病気になる"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 13,
#       lyric: "All the neighborhood dogs Should be drunk in the bar"
#     },
#     {
#       question_id: 13,
#       lyric: "レンコン好きです！ レンコン好きです！ レンコン好きです！ 今誰すかー？"
#     },
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 13,
#       choice: "レンコン好きです！ 今誰すかー？",
#       is_answer: false,
#     },
#     {
#       question_id: 13,
#       choice: "Lotus root sickness In my daddy's car?",
#       is_answer: false,
#     },
#     {
#       question_id: 13,
#       choice: "There goes sickness In my dare scarf?",
#       is_answer: false,
#     },
#     {
#       question_id: 13,
#       choice: "There goes sickness In my daddy's car?",
#       is_answer: true,
#     },
#   ]
# )


# Music.create!(
#   [
#     {
#       music_name: "Bossa Nova Baby",
#       artist_name: 'Elvis Presley',
#       category: "",
#       year: 1963,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 14,
#       youtube_id: 'jTxvcPPsmb0',
#       youtube_start_time: 91,
#       youtube_end_time: 99,
#       difficulty: 2,
#       # commentary: "解説",
#       japanese: "外に出てちょっと涼もうよ"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 14,
#       lyric: "I said, Come on baby, it's hot in here お酢をください"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 14,
#       choice: "お酢をください",
#       is_answer: false,
#     },
#     {
#       question_id: 14,
#       choice: "And it's oh so cold outside",
#       is_answer: false,
#     },
#     {
#       question_id: 14,
#       choice: "And it's oh so cool outside",
#       is_answer: true,
#     },
#     {
#       question_id: 14,
#       choice: "And it's oh so cool darkside",
#       is_answer: false,
#     },
#   ]
# )


# Music.create!(
#   [
#     {
#       music_name: "Mailbox Arson",
#       artist_name: 'Alexisonfire',
#       category: "",
#       year: 2006,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 15,
#       youtube_id: '3BPHoqKU9ag',
#       youtube_start_time: 38,
#       youtube_end_time: 53,
#       difficulty: 2,
#       # commentary: "解説",
#       japanese: "この町ではメールは安全ではありません"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 15,
#       lyric: "But I don't think I can stay for long There's lots more mail that's not yet ash"
#     },
#     {
#       question_id: 15,
#       lyric: "嫁ブサイクでした！！嫁ブサイクでした！！嫁ブサイクでした！！"
#     },
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 15,
#       choice: "嫁ブサイクでした！！",
#       is_answer: false,
#     },
#     {
#       question_id: 15,
#       choice: "Your mail's not safe in this town",
#       is_answer: true,
#     },
#     {
#       question_id: 15,
#       choice: "Yome mail's not safe in this town",
#       is_answer: false,
#     },
#     {
#       question_id: 15,
#       choice: "Your mail's not safe in this down",
#       is_answer: false,
#     },
#   ]
# )


# Music.create!(
#   [
#     {
#       music_name: "Sinner",
#       artist_name: 'Judas Priest',
#       category: "",
#       year: 1977,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 16,
#       youtube_id: 'zC8qK-WDALQ',
#       youtube_start_time: 114,
#       youtube_end_time: 123,
#       difficulty: 2,
#       # commentary: "解説",
#       japanese: "全ての者が呪われている、皆が地獄に落ちるのだ 背徳の騎士によって!"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 16,
#       lyric: "母さんが言う、「こういうパーマは変」だと 死のう！！"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 16,
#       choice: "母さんが言う、「こういうパーマは変」だと 死のう！！",
#       is_answer: false,
#     },
#     {
#       question_id: 16,
#       choice: "Curse and damn you all, you'll fall by the hand of the. Sinner!",
#       is_answer: true,
#     },
#     {
#       question_id: 16,
#       choice: "Cause and damn you all, you'll fall by the hand of the. Sinner!",
#       is_answer: false,
#     },
#     {
#       question_id: 16,
#       choice: "Cause and down you all, you'll fail by the hand of the. Sinner!",
#       is_answer: false,
#     },
#   ]
# )


# Music.create!(
#   [
#     {
#       music_name: "Too Fast For Love",
#       artist_name: 'Mötley Crüe',
#       category: "",
#       year: 1981,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 17,
#       youtube_id: 'lY_XBWKFxR4',
#       youtube_start_time: 57,
#       youtube_end_time: 62,
#       difficulty: 1,
#       # commentary: "解説",
#       japanese: "ドリームマシン、めちゃくちゃカッコいい 彼女は夜を明かすことができる"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 17,
#       lyric: "じんましん それは苦しくて たまらない"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 17,
#       choice: "じんましん それは苦しくて たまらない",
#       is_answer: false,
#     },
#     {
#       question_id: 17,
#       choice: "Dream machine, so damn cool She can turn on the night",
#       is_answer: true,
#     },
#     {
#       question_id: 17,
#       choice: "Gin machine, so damn cool She can turn on the night",
#       is_answer: false,
#     },
#     {
#       question_id: 17,
#       choice: "Gin machine, so damn cool She can turn on the light",
#       is_answer: false,
#     },
#   ]
# )


# Music.create!(
#   [
#     {
#       music_name: "Stupid Marriage",
#       artist_name: 'The Specials',
#       category: "",
#       year: 1979,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 18,
#       youtube_id: 'GNyrYiljeIw',
#       youtube_start_time: 121,
#       youtube_end_time: 132,
#       difficulty: 2,
#       # commentary: "解説",
#       japanese: "財産。私は一つの結論に達しました"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 18,
#       lyric: "And she left you and married someone else.
#       So you got drunk,
#       And smashed up your ex-girlfriend's 
#       こら待て！ 早く来んとワンタン来るじゃん"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 18,
#       choice: "こら待て！ 早く来んとワンタン来るじゃん",
#       is_answer: false,
#     },
#     {
#       question_id: 18,
#       choice: "property. I have come to one conclusion",
#       is_answer: true,
#     },
#     {
#       question_id: 18,
#       choice: "call mate. I have come to one conclusion",
#       is_answer: false,
#     },
#     {
#       question_id: 18,
#       choice: "call mate. I come to one town conclusion",
#       is_answer: false,
#     },
#   ]
# )


# Music.create!(
#   [
#     {
#       music_name: "Somebody To Love",
#       artist_name: 'Queen',
#       category: "",
#       year: 1976,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 19,
#       youtube_id: 'kijpcUv-b8M',
#       youtube_start_time: 96,
#       youtube_end_time: 113,
#       difficulty: 0,
#       # commentary: "解説",
#       japanese: "だけど、みんな僕を凹ませたがるんだ"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 19,
#       lyric: "somebody to love He works hard Everyday I try and I try and I try But everybody
#       ワシャ コケた"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 19,
#       choice: "ワシャ コケた",
#       is_answer: false,
#     },
#     {
#       question_id: 19,
#       choice: "wasya to put me down",
#       is_answer: false,
#     },
#     {
#       question_id: 19,
#       choice: "watch to put me down",
#       is_answer: false,
#     },
#     {
#       question_id: 19,
#       choice: "wants to put me down",
#       is_answer: true,
#     },
#   ]
# )


# Music.create!(
#   [
#     {
#       music_name: "White Light/White Heat",
#       artist_name: 'The Velvet Underground',
#       category: "",
#       year: 1968,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 20,
#       youtube_id: '5dbEF-YyEnw',
#       youtube_start_time: 36,
#       youtube_end_time: 48,
#       difficulty: 0,
#       # commentary: "解説",
#       japanese: "その側を見て。あなたはそれが運転中に危険になることを知らないの？"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 20,
#       lyric: "Aww, I surely do love watching that stuff tip itself in
#               Hmm, hmm, white light"
#     },
#     {
#       question_id: 20,
#       lyric: "お医者さん、お医者さん うちの子診てくれ"
#     },
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 20,
#       choice: "お医者さん、お医者さん うちの子診てくれ",
#       is_answer: false,
#     },
#     {
#       question_id: 20,
#       choice: " Watch that sun, watch that sun Don't you know it's gonna be dead in the drive ",
#       is_answer: false,
#     },
#     {
#       question_id: 20,
#       choice: "Watch that sony, watch that sony Don't you know it's gonna be dead in the drive",
#       is_answer: false,
#     },
#     {
#       question_id: 20,
#       choice: "Watch that side, watch that side Don't you know it's gonna be dead in the drive",
#       is_answer: true,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "Blackened",
#       artist_name: 'Metallica',
#       category: "",
#       year: 1988,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 21,
#       youtube_id: 'nUZVXtDVrc0',
#       youtube_start_time: 73,
#       youtube_end_time: 84,
#       difficulty: 1,
#       # commentary: "解説",
#       japanese: "黒化は終わり それは冬をもたらす"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 21,
#       lyric: "バケツリレー 水よこせ"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 21,
#       choice: "バケツリレー 水よこせ",
#       is_answer: false,
#     },
#     {
#       question_id: 21,
#       choice: " Blackened is the end  Water it will send ",
#       is_answer: false,
#     },
#     {
#       question_id: 21,
#       choice: " Blackened is the end  Winter it will send ",
#       is_answer: true,
#     },
#     {
#       question_id: 21,
#       choice: "Blackened is that relay Winter it will send",
#       is_answer: false,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "Hound Dog",
#       artist_name: 'John Lennon',
#       category: "",
#       year: 1972,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 22,
#       youtube_id: 'Wt5Ar7XQR9I',
#       youtube_start_time: 119,
#       youtube_end_time: 125,
#       difficulty: 1,
#       # commentary: "解説",
#       japanese: "嘘っぱちだったな！"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 22,
#       lyric: "When they said that you was highclassed,
#       笑っちゃったな！！"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 22,
#       choice: "笑っちゃったな",
#       is_answer: false,
#     },
#     {
#       question_id: 22,
#       choice: " That was just now ",
#       is_answer: false,
#     },
#     {
#       question_id: 22,
#       choice: "That was just a lie",
#       is_answer: true,
#     },
#     {
#       question_id: 22,
#       choice: "That was just a rain",
#       is_answer: false,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "My Melancholy Blues",
#       artist_name: 'Queen',
#       category: "",
#       year: 1977,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 23,
#       youtube_id: 'NGjSUbQG7sI',
#       youtube_start_time: 12,
#       youtube_end_time: 25,
#       difficulty: 0,
#       # commentary: "解説",
#       japanese: "また一つパーティーが終わった 僕は冷たい現実の中に取り残される"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 23,
#       lyric: "花のパリ側 なめこ蕎麦"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 23,
#       choice: "花のパリ側 なめこ蕎麦",
#       is_answer: false,
#     },
#     {
#       question_id: 23,
#       choice: " Another Pari sober  And I'm left cold sober ",
#       is_answer: false,
#     },
#     {
#       question_id: 23,
#       choice: "Another party's sober  And I'm left cold sober",
#       is_answer: false,
#     },
#     {
#       question_id: 23,
#       choice: "Another party's over  And I'm left cold sober",
#       is_answer: true,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "Soul Dracula",
#       artist_name: 'Hot Blood',
#       category: "",
#       year: 1977,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 24,
#       youtube_id: 'iSPD4t-n3Us',
#       youtube_start_time: 165,
#       youtube_end_time: 171,
#       difficulty: 1,
#       # commentary: "解説",
#       japanese: "ああ、やる"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 24,
#       lyric: "アハハハ・・・お〜頭痛い・・"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 24,
#       choice: "アハハハ・・・お〜頭痛い・・",
#       is_answer: false,
#     },
#     {
#       question_id: 24,
#       choice: " Hahahaha Ah, do it ",
#       is_answer: true,
#     },
#     {
#       question_id: 24,
#       choice: "Hahahaha Ah,headache",
#       is_answer: false,
#     },
#     {
#       question_id: 24,
#       choice: "Hahahaha Ah, time's up",
#       is_answer: false,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "Soon be done",
#       artist_name: 'Shaggy',
#       category: "",
#       year: 1993,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 25,
#       youtube_id: '5MlvuV6UtiU',
#       youtube_start_time: 0,
#       youtube_end_time: 6,
#       difficulty: 0,
#       # commentary: "解説",
#       japanese: "「手を合わせて」と 誰かがそう言う"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 25,
#       lyric: "東急ハンズ 次は、 そばに 西友"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 25,
#       choice: "東急ハンズ、次は  そばに 西友",
#       is_answer: false,
#     },
#     {
#       question_id: 25,
#       choice: "Put your hands together  Soba ni say yeah",
#       is_answer: false,
#     },
#     {
#       question_id: 25,
#       choice: "Put your hands together  Somebody say yeah",
#       is_answer: true,
#     },
#     {
#       question_id: 25,
#       choice: "Tap your hands together  Somebody say yeah",
#       is_answer: false,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "Blackened",
#       artist_name: 'Metallica',
#       category: "",
#       year: 1989,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 26,
#       youtube_id: 'nUZVXtDVrc0',
#       youtube_start_time: 183,
#       youtube_end_time: 192,
#       difficulty: 2,
#       # commentary: "解説",
#       japanese: "反対、矛盾、予感"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 26,
#       lyric: "アホでしょ バカでしょ ドラえもんでしょ"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 26,
#       choice: "アホでしょ バカでしょ ドラえもんでしょ",
#       is_answer: false,
#     },
#     {
#       question_id: 26,
#       choice: " Opposition,  bastion  premonition ",
#       is_answer: false,
#     },
#     {
#       question_id: 26,
#       choice: "Opposition, contradiction premonition",
#       is_answer: true,
#     },
#     {
#       question_id: 26,
#       choice: "Opposition, contradiction decomposition",
#       is_answer: false,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "Whispering Playa",
#       artist_name: 'TLC',
#       category: "",
#       year: 1999,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 27,
#       youtube_id: 'TJ3nBpCu4Vg',
#       youtube_start_time: 44,
#       youtube_end_time: 50,
#       difficulty: 2,
#       # commentary: "解説",
#       japanese: "あなたは私が言っていることを知っています
#       ダウンしている
#       分解してみましょう"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 27,
#       lyric: "何点？ 満点！ 一応13点。。"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 27,
#       choice: "何点？ 満点！ 一応13点。。",
#       is_answer: false,
#     },
#     {
#       question_id: 27,
#       choice: "You know what I'm sayin'  I'm down  Let's break it down",
#       is_answer: true,
#     },
#     {
#       question_id: 27,
#       choice: "You know what I'm sayin'  I'm down  Let's talk it down",
#       is_answer: false,
#     },
#     {
#       question_id: 27,
#       choice: "You know what I'm sayin'  I'm down  Let's talk it up",
#       is_answer: false,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "I Want To Hold Your Hand",
#       artist_name: 'The Beatles',
#       category: "",
#       year: 1963,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 28,
#       youtube_id: 'jenWdylTtzs',
#       youtube_start_time: 114,
#       youtube_end_time: 134,
#       difficulty: 0,
#       # commentary: "解説",
#       japanese: "君の手を握りたい"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 28,
#       lyric: "Yeah, you got that something  I think you'll understand
#       When I'll say that something"
#     },
#     {
#       question_id: 28,
#       lyric: "アホな放尿犯 アホな放尿犯〜"
#     },
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 28,
#       choice: "アホな放尿犯",
#       is_answer: false,
#     },
#     {
#       question_id: 28,
#       choice: "I Want To Hold Your Hand",
#       is_answer: true,
#     },
#     {
#       question_id: 28,
#       choice: "I Whole To Hold Your Hand",
#       is_answer: false,
#     },
#     {
#       question_id: 28,
#       choice: "I Want To Head Your Hand",
#       is_answer: false,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "Don't Piss Me Off",
#       artist_name: 'David Lee Roth',
#       category: "",
#       year: 1997,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 29,
#       youtube_id: 'a5WpOe8pz6U',
#       youtube_start_time: 237,
#       youtube_end_time: 263,
#       difficulty: 1,
#       # commentary: "解説",
#       japanese: "もう我慢できない 君はそんな子じゃないはずさ もう耐えられない、ああ"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 29,
#       lyric: "開けて飲もう なんで噛んでんの？ 開けて飲・・・もう"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 29,
#       choice: "開けて飲もう なんで噛んでんの？ 開けて飲・・・もう",
#       is_answer: false,
#     },
#     {
#       question_id: 29,
#       choice: " I can't take no more  Why not that kind of girl  I can't take no more ",
#       is_answer: false,
#     },
#     {
#       question_id: 29,
#       choice: "I can't take no more  None dare that kind of girl  I can't take no more",
#       is_answer: false,
#     },
#     {
#       question_id: 29,
#       choice: "I can't take no more  You're not that kind of girl  I can't take no more",
#       is_answer: true,
#     },
#   ]
# )

# Music.create!(
#   [
#     {
#       music_name: "Funky Drummer",
#       artist_name: 'James Brown',
#       category: "",
#       year: 1986,
#     }
#   ]
# )
# Question.create!(
#   [
#     {
#       music_id: 30,
#       youtube_id: 'AoQ4AtsFWVM',
#       youtube_start_time: 76,
#       youtube_end_time: 106,
#       difficulty: 2,
#       # commentary: "解説",
#       japanese: "「法律を呼んで」
#       「法律を呼んで」
#       「悪魔の婿」
#       「ジュースを持って来て」✖︎４
#       「私を汗かかせて」"
#     },
#   ]
# )
# Lyric.create!(
#   [
#     {
#       question_id: 30,
#       lyric: "この！ この！ フッ だまされた フッ うぅ！ リンゴジュース✖︎４ めっちゃ酸っぱ！！"
#     }
#   ]
# )
# Choice.create!(
#   [
#     {
#       question_id: 30,
#       choice: "この！ この！ フッ だまされた フッ うぅ！ リンゴジュース✖︎４ めっちゃ酸っぱ！！",
#       is_answer: false,
#     },
#     {
#       question_id: 30,
#       choice: " Call the law Call the law The devil's son-in-law  Ring on the juice✖4  Make me suppa ",
#       is_answer: false,
#     },
#     {
#       question_id: 30,
#       choice: " Call the law Call the law The devil's son-in-law  Bring on the juice✖4  Make me sweat ",
#       is_answer: true,
#     },
#     {
#       question_id: 30,
#       choice: "Call the roll Call the roll The devil's son-in-roll  Bring on the juice✖4  Make me sweat",
#       is_answer: false,
#     },
#   ]
# )
#10/6↓
Music.create!(
  [
    {
      music_name: "Left And Right (feat. Jung Kook of BTS)",
      artist_name: 'Charlie Puth',
      category: "",
      year: 2022,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 31,
      youtube_id: 'a7GITgqwDVg',
      youtube_start_time: 95,
      youtube_end_time: 105,
      difficulty: 2,
      # commentary: "解説",
      japanese: "これからどうしよう"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 31,
      lyric: "Your love stays with me day and night 
      I can feel you over here I can feel you over here"
    },
    {
      question_id: 31,
      lyric: "you take up every corner of my mind 
      落ち込んでんな"
    },
  ]
)
Choice.create!(
  [
    {
      question_id: 31,
      choice: "落ち込んでんな",
      is_answer: false,
    },
    {
      question_id: 31,
      choice: "what to gon do now",
      is_answer: false,
    },
    {
      question_id: 31,
      choice: "whatcha gon do now",
      is_answer: true,
    },
    {
      question_id: 31,
      choice: "whatcha gon do how",
      is_answer: false,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Thunder",
      artist_name: 'Imagine Dragons',
      category: "",
      year: 2017,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 32,
      youtube_id: 'fKopy74weus',
      youtube_start_time: 40,
      youtube_end_time: 56,
      difficulty: 0,
      # commentary: "解説",
      japanese: "雷"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 32,
      lyric: "take a number I was lightning before the thunder なんで？..."
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 32,
      choice: "なんで？",
      is_answer: false,
    },
    {
      question_id: 32,
      choice: "Thunder",
      is_answer: true,
    },
    {
      question_id: 32,
      choice: "Funder",
      is_answer: false,
    },
    {
      question_id: 32,
      choice: "Panda",
      is_answer: false,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Uptown Funk",
      artist_name: 'Bruno Mars',
      category: "",
      year: 2015,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 33,
      youtube_id: 'OPf0YbXqDm0',
      youtube_start_time: 58,
      youtube_end_time: 67,
      difficulty: 0,
      # commentary: "解説",
      japanese: "俺の姿を見ればわかるだろ？"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 33,
      lyric: "'Cause uptown funk gon' give it to you✖2
      Saturday night and we in the spot
      どんぶり20杯"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 33,
      choice: "どんぶり20杯",
      is_answer: false,
    },
    {
      question_id: 33,
      choice: "Don't believe me just watch",
      is_answer: true,
    },
    {
      question_id: 33,
      choice: "Don't believe me just what",
      is_answer: false,
    },
    {
      question_id: 33,
      choice: "Don't believe me just white",
      is_answer: false,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Change The World",
      artist_name: 'Eric Clapton',
      category: "",
      year: 1996,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 34,
      youtube_id: 'kntzQiaFzOQ',
      youtube_start_time: 136,
      youtube_end_time: 146,
      difficulty: 1,
      # commentary: "解説",
      japanese: "僕は君の世界を照らす太陽の光になるよ"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 34,
      lyric: "I could change the world アワビとサザエを茹でます"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 34,
      choice: "アワビとサザエを茹でます",
      is_answer: false,
    },
    {
      question_id: 34,
      choice: "I wanna be the sunlight in your universe",
      is_answer: false,
    },
    {
      question_id: 34,
      choice: "I would be the sunnight in your universe",
      is_answer: false,
    },
    {
      question_id: 34,
      choice: "I would be the sunlight in your universe",
      is_answer: true,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Who Let The Dogs Out",
      artist_name: 'Baha Men',
      category: "",
      year: 2010,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 35,
      youtube_id: 'Qkuu0Lwb5EM',
      youtube_start_time: 18,
      youtube_end_time: 28,
      difficulty: 0,
      # commentary: "解説",
      japanese: "こんな奴らを野放しにしたのは誰だ？"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 35,
      lyric: "増えてゾウさん"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 35,
      choice: "増えてゾウさん",
      is_answer: false,
    },
    {
      question_id: 35,
      choice: "Who let the dogs sun",
      is_answer: false,
    },
    {
      question_id: 35,
      choice: "Who let the dogs son",
      is_answer: false,
    },
    {
      question_id: 35,
      choice: "Who let the dogs out",
      is_answer: true,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "One Call Away",
      artist_name: 'Charlie Puth',
      category: "",
      year: 2015,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 36,
      youtube_id: 'BxuY9FET9Y4',
      youtube_start_time: 34,
      youtube_end_time: 50,
      difficulty: 1,
      # commentary: "解説",
      japanese: "スーパーマンだって、僕にはかなわない"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 36,
      lyric: "I'm only one call away I'll be there to save the day スープ麺がないthing on me"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 36,
      choice: "スープ麺がないthing on me",
      is_answer: false,
    },
    {
      question_id: 36,
      choice: "Soup men got nothing on me",
      is_answer: false,
    },
    {
      question_id: 36,
      choice: "Superman got nothing on me",
      is_answer: false,
    },
    {
      question_id: 36,
      choice: "Superman got knowing on me",
      is_answer: true,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Chuck Berry",
      artist_name: 'Johnny B Goode',
      category: "",
      year: 1959,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 37,
      youtube_id: 'T38v3-SSGcM',
      youtube_start_time: 35,
      youtube_end_time: 44,
      difficulty: 0,
      # commentary: "解説",
      japanese: "行けジョニー"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 37,
      lyric: "大谷 ゴーゴー"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 37,
      choice: "大谷 ゴーゴー",
      is_answer: false,
    },
    {
      question_id: 37,
      choice: "Go Johnny go,go",
      is_answer: true,
    },
    {
      question_id: 37,
      choice: "Oh Johnny go,go",
      is_answer: false,
    },
    {
      question_id: 37,
      choice: " OHTANI go,go ",
      is_answer: false,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "The Shock Of The Lightning",
      artist_name: 'Oasis',
      category: "",
      year: 2008,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 38,
      youtube_id: 'mPc2plEHrHA',
      youtube_start_time: 45,
      youtube_end_time: 57,
      difficulty: 0,
      # commentary: "解説",
      japanese: "やってきな 出て来いよ 今夜"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 38,
      lyric: "I feel love in the shock of the lightning I fall into the blinding light カニ~かま カニ~かま ツナ"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 38,
      choice: "カニ~かま カニ~かま ツナ",
      is_answer: false,
    },
    {
      question_id: 38,
      choice: "Come in, come out, come in, come out tonight",
      is_answer: true,
    },
    {
      question_id: 38,
      choice: "Come in, come on, come in, come on tonight",
      is_answer: false,
    },
    {
      question_id: 38,
      choice: "  Come in, come on, come in, come on tuna  ",
      is_answer: false,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Shivers",
      artist_name: 'Ed Sheeran',
      category: "",
      year: 2021,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 39,
      youtube_id: 'Il0S8BoucSA',
      youtube_start_time: 109,
      youtube_end_time: 116,
      difficulty: 2,
      # commentary: "解説",
      japanese: "あぁ、まだ足りないよ"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 39,
      lyric: "I never thought that I could love this hard 浮気下痢なう"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 39,
      choice: "浮気下痢なう",
      is_answer: false,
    },
    {
      question_id: 39,
      choice: "Oh I can’t get enough",
      is_answer: true,
    },
    {
      question_id: 39,
      choice: " Oh I can’t get know ",
      is_answer: false,
    },
    {
      question_id: 39,
      choice: "Oh I can’t getting now",
      is_answer: false,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Ticket To Ride",
      artist_name: 'The Beatles',
      category: "",
      year: 1965,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 40,
      youtube_id: 'SyNt5zm3U_M',
      youtube_start_time: 110,
      youtube_end_time: 122,
      difficulty: 2,
      # commentary: "解説",
      japanese: "彼女はなんであんなに、嬉しそうなんだ"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 40,
      lyric: "She's got a ticket to ride But she don't care 殿は知らんぞ high"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 40,
      choice: "殿は知らんぞ high",
      is_answer: false,
    },
    {
      question_id: 40,
      choice: "We don't know why she’s ride so high",
      is_answer: false,
    },
    {
      question_id: 40,
      choice: "I don't know why she’s riding so high",
      is_answer: true,
    },
    {
      question_id: 40,
      choice: "I don't say why she’s riding so high",
      is_answer: false,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Ask Me Why",
      artist_name: 'The Beatles',
      category: "",
      year: 1963,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 41,
      youtube_id: '2ttGjtfQ7EA',
      youtube_start_time: 47,
      youtube_end_time: 63,
      difficulty: 0,
      # commentary: "解説",
      japanese: "不幸な事なんて"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 41,
      lyric: "I can’t believe it’s happened to me I can’t conceive おでんにも水割り"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 41,
      choice: "おでんにも水割り",
      is_answer: false,
    },
    {
      question_id: 41,
      choice: "of any more military",
      is_answer: false,
    },
    {
      question_id: 41,
      choice: "of any more misery",
      is_answer: true,
    },
    {
      question_id: 41,
      choice: "oh baby more misery",
      is_answer: false,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "I'm In Love With My Car",
      artist_name: 'Queen',
      category: "",
      year: 1975,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 42,
      youtube_id: 'oaEM4JYFPfw',
      youtube_start_time: 22,
      youtube_end_time: 33,
      difficulty: 1,
      # commentary: "解説",
      japanese: "夢のようなマシーン なんて美しいんだ"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 42,
      lyric: "楽しいな釣り そっち禁止"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 42,
      choice: "楽しいな釣り そっち禁止",
      is_answer: false,
    },
    {
      question_id: 42,
      choice: "That machine of a dream, such a clean machine",
      is_answer: false,
    },
    {
      question_id: 42,
      choice: "The machine of a dream, such a clean machine",
      is_answer: true,
    },
    {
      question_id: 42,
      choice: "The machine of a green, such a clean machine",
      is_answer: false,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Now I'm Here",
      artist_name: 'Queen',
      category: "",
      year: 1974,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 43,
      youtube_id: 'HPHTKePwzUw',
      youtube_start_time: 78,
      youtube_end_time: 85,
      difficulty: 2,
      # commentary: "解説",
      japanese: "心配しないで、僕の大切なひと。僕が他に気を移すなんてことはしないよ"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 43,
      lyric: "America's new bride to be 丼ぶり食えば？ すみません"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 43,
      choice: "丼ぶり食えば？ すみません",
      is_answer: false,
    },
    {
      question_id: 43,
      choice: "don't worry baby I'm safe and sad",
      is_answer: false,
    },
    {
      question_id: 43,
      choice: "don't worry baby I'm safe and sound",
      is_answer: true,
    },
    {
      question_id: 43,
      choice: "don't worry baby I'm save and sound",
      is_answer: false,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Bohemian Rhapsody",
      artist_name: 'Queen',
      category: "",
      year: 1985,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 44,
      youtube_id: 'vbvyNnw8Qjg',
      youtube_start_time: 88,
      youtube_end_time: 99,
      difficulty: 2,
      # commentary: "解説",
      japanese: "もう遅いよ もう終わりなんだ"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 44,
      lyric: "失礼！ 松っちゃんですか？"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 44,
      choice: "失礼！ 松っちゃんですか？",
      is_answer: false,
    },
    {
      question_id: 44,
      choice: "Too Late, my times is up",
      is_answer: false,
    },
    {
      question_id: 44,
      choice: "Tonight, my times has come",
      is_answer: false,
    },
    {
      question_id: 44,
      choice: "Too Late, my times has come",
      is_answer: true,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Bohemian Rhapsody",
      artist_name: 'Queen',
      category: "",
      year: 1985,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 45,
      youtube_id: 'vbvyNnw8Qjg',
      youtube_start_time: 99,
      youtube_end_time: 106,
      difficulty: 1,
      # commentary: "解説",
      japanese: "体に痛みが走ってるんだ"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 45,
      lyric: "Sends shivers down my spine Boby's 生き延びたい"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 45,
      choice: "生き延びたい",
      is_answer: false,
    },
    {
      question_id: 45,
      choice: "aching all the type",
      is_answer: false,
    },
    {
      question_id: 45,
      choice: "aching any the time",
      is_answer: false,
    },
    {
      question_id: 45,
      choice: "aching all the time",
      is_answer: true,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Body Language",
      artist_name: 'Queen',
      category: "",
      year: 1982,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 46,
      youtube_id: 'p2EDkv_dyeI',
      youtube_start_time: 210,
      youtube_end_time: 218,
      difficulty: 0,
      # commentary: "解説",
      japanese: "君の体が欲しいんだ"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 46,
      lyric: "あー〜終わっちゃたって"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 46,
      choice: "あー〜終わっちゃたって",
      is_answer: false,
    },
    {
      question_id: 46,
      choice: "I want you taty",
      is_answer: false,
    },
    {
      question_id: 46,
      choice: "I want you pony",
      is_answer: false,
    },
    {
      question_id: 46,
      choice: "I want you body",
      is_answer: true,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Don’t Stop 'Til You Get Enough",
      artist_name: 'Michael Jackson',
      category: "",
      year: 1979,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 47,
      youtube_id: 'yURRmWtbTbo',
      youtube_start_time: 120,
      youtube_end_time: 132,
      difficulty: 0,
      # commentary: "解説",
      japanese: "文句なんてないさ"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 47,
      lyric: "So let love take us through the hours アワビ食える うん！"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 47,
      choice: "アワビ食える うん！",
      is_answer: false,
    },
    {
      question_id: 47,
      choice: "I Won't Be Complanin' ooh",
      is_answer: true,
    },
    {
      question_id: 47, 
      choice: "I wanna Be Complanin' ooh",
      is_answer: false,
    },
    {
      question_id: 47,
      choice: "I Won't Be completion ooh",
      is_answer: false,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "Tell Him",
      artist_name: 'Céline Dion',
      category: "",
      year: 1997,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 48,
      youtube_id: 'xKWWyO-C2o0',
      youtube_start_time: 72,
      youtube_end_time: 80,
      difficulty: 0,
      # commentary: "解説",
      japanese: "チャンスを逃すことはできない"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 48,
      lyric: "But what you must understand 行かなくちゃ"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 48,
      choice: "行かなくちゃ",
      is_answer: false,
    },
    {
      question_id: 48,
      choice: "You can’t let the chance",
      is_answer: true,
    },
    {
      question_id: 48, 
      choice: "You can’t let the change",
      is_answer: false,
    },
    {
      question_id: 48,
      choice: "You can let the rechance",
      is_answer: false,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "34+35",
      artist_name: 'Ariana Grande',
      category: "",
      year: 2020,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 49,
      youtube_id: 'B6_iQvaIjXw',
      youtube_start_time: 88,
      youtube_end_time: 94,
      difficulty: 2,
      # commentary: "解説",
      japanese: "日が昇るまで私を抱いて"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 49,
      lyric: "Can you stay up all night ３密 なってない"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 49,
      choice: "３密 なってない",
      is_answer: false,
    },
    {
      question_id: 49,
      choice: "Fuck me til the sunlight",
      is_answer: false,
    },
    {
      question_id: 49, 
      choice: "Fuck me til the daylight",
      is_answer: true,
    },
    {
      question_id: 49,
      choice: "Fuck me til the daynight",
      is_answer: false,
    },
  ]
)

Music.create!(
  [
    {
      music_name: "God is a woman",
      artist_name: 'Ariana Grande',
      category: "",
      year: 2017,
    }
  ]
)
Question.create!(
  [
    {
      music_id: 50,
      youtube_id: 'kHLHSlExFis',
      youtube_start_time: 9,
      youtube_end_time: 15,
      difficulty: 1,
      # commentary: "解説",
      japanese: "神は女性だって信じることになるわ"
    },
  ]
)
Lyric.create!(
  [
    {
      question_id: 50,
      lyric: "When all is said and done 湯船があるぞ うーん なん、なんで？"
    }
  ]
)
Choice.create!(
  [
    {
      question_id: 50,
      choice: "湯船があるぞ うーん なん、なんで？",
      is_answer: false,
    },
    {
      question_id: 50,
      choice: "You'll be the God is a women And I",
      is_answer: false,
    },
    {
      question_id: 50, 
      choice: "You'll belive God is a women And I",
      is_answer: true,
    },
    {
      question_id: 50,
      choice: "You'll bell ganna is a women And I",
      is_answer: false,
    },
  ]
)