# == Schema Information
#
# Table name: choices
#
#  id          :bigint           not null, primary key
#  choice      :text
#  is_answer   :boolean          not null
#  question_id :bigint           not null
#
# Indexes
#
#  index_choices_on_question_id  (question_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#
FactoryBot.define do
  factory :choice do
    sequence(:question) { 1 }
    sequence(:choice) { |n| "Choice #{n}" }
  
    trait :false_answer do
      is_answer { false }
    end
  
    trait :true_answer do
      is_answer { true }
    end
  end
end