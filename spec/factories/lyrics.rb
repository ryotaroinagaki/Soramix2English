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
    sequence(:question) { 1 }
    sequence(:lyric) { "Lyric" }
  end
end
