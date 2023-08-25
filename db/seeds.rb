# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
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
      youtube_start_time: 144,
      youtube_end_time: 157,
      difficulty: 0,
      commentary: "解説",
      japanese: "和訳"
    },
    {
      music_id: 1,
      youtube_id: 'bWcASV2sey0',
      youtube_start_time: 144,
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
      youtube_start_time: 144,
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
      youtube_start_time: 144,
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
      youtube_start_time: 144,
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
      question_id: 1,
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
      I'm holding out for a hero
      'til the morning light",
      is_answer: true,
    }
  ]
)
