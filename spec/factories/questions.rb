# == Schema Information
#
# Table name: questions
#
#  id                 :bigint           not null, primary key
#  commentary         :text
#  difficulty         :integer
#  japanese           :text
#  youtube_end_time   :integer          not null
#  youtube_start_time :integer          not null
#  music_id           :bigint           not null
#  youtube_id         :string           not null
#
# Indexes
#
#  index_questions_on_music_id  (music_id)
#
# Foreign Keys
#
#  fk_rails_...  (music_id => musics.id)
#
FactoryBot.define do
  factory :question do
    sequence(:music) { 1 }
    sequence(:youtube_id) { "Youtube_id" }
    sequence(:youtube_start_time) { 1 }
    sequence(:youtube_end_time) { 10 }
    sequence(:difficultyinteger) { "easy" }
    sequence(:japanese) { "洋楽の和訳です" }
  end
end
