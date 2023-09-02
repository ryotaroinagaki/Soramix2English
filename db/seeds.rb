Music.create!(
  [
    {
      music_name: "Hero",
      artist_name: 'Bonnie Tyler',
      category: "rock",
      year: 1990,
    }
  ]
)

Question.create!(
  [
    {
      music_id: 1,
      youtube_id: 'bWcASV2sey0',
      youtube_start_time: 143,
      youtube_end_time: 157,
      difficulty: 0,
      commentary: "解説",
      japanese: "和訳"
    },
    {
      music_id: 1,
      youtube_id: 'bWcASV2sey0',
      youtube_start_time: 143,
      youtube_end_time: 157,
      difficulty: 0,
      commentary: "解説",
      japanese: "ヒーローが欲しいのよ
      手を伸ばしてヒーローを求めてる
      朝の光が差し込んでくるまで"
    },
    {
      music_id: 1,
      youtube_id: 'bWcASV2sey0',
      youtube_start_time: 143,
      youtube_end_time: 157,
      difficulty: 0,
      commentary: "解説",
      japanese: "ヒーローが欲しいのよ
      手を伸ばしてヒーローを求めてる
      朝の光が差し込んでくるまで"
    },
    {
      music_id: 1,
      youtube_id: 'bWcASV2sey0',
      youtube_start_time: 143,
      youtube_end_time: 157,
      difficulty: 0,
      commentary: "解説",
      japanese: "ヒーローが欲しいのよ
      手を伸ばしてヒーローを求めてる
      朝の光が差し込んでくるまで"
    },
    {
      music_id: 1,
      youtube_id: 'bWcASV2sey0',
      youtube_start_time: 143,
      youtube_end_time: 157,
      difficulty: 0,
      commentary: "解説",
      japanese: "ヒーローが欲しいのよ
      手を伸ばしてヒーローを求めてる
      朝の光が差し込んでくるまで"
    }
  ]
)

Lyric.create!(
  [
    {
      question_id: 36,
      lyric: "He's gotta be strong
      And he's gotta be fast
      And he's gotta be fresh from the fight
      兄が疲労〜アホに殴るヒロちゃんに遠慮がない〜"
    }
  ]
)

Choice.create!(
  [
    {
      question_id: 36,
      choice: 'A',
      is_answer: false,
    },
    {
      question_id: 36,
      choice: 'B',
      is_answer: false,
    },
    {
      question_id: 36,
      choice: 'C',
      is_answer: false,
    },
    {
      question_id: 36,
      choice: "I need a hero
      I'm holding out for a hero
      'til the morning light",
      is_answer: true,
    }
  ]
)
