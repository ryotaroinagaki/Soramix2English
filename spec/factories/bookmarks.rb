# == Schema Information
#
# Table name: bookmarks
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_bookmarks_on_question_id              (question_id)
#  index_bookmarks_on_user_id                  (user_id)
#  index_bookmarks_on_user_id_and_question_id  (user_id,question_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :bookmark do
    association :user
    association :question
  end
end
