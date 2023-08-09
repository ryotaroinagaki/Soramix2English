# == Schema Information
#
# Table name: lyrics
#
#  id          :bigint           not null, primary key
#  lyric       :text
#  timing      :integer
#  question_id :bigint           not null
#
# Indexes
#
#  index_lyrics_on_question_id  (question_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#
FactoryBot.define do
  factory :lyric do
    question { nil }
    lyric { "MyText" }
    timing { 1 }
  end
end
