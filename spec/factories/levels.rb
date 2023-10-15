# == Schema Information
#
# Table name: levels
#
#  id              :bigint           not null, primary key
#  level_name      :string           not null
#  total_questions :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
FactoryBot.define do
  factory :level do
    level_name { "MyString" }
    total_questions { 1 }
  end
end
