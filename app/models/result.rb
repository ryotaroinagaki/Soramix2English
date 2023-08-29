# == Schema Information
#
# Table name: results
#
#  id          :bigint           not null, primary key
#  result      :boolean          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_results_on_question_id  (question_id)
#  index_results_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#  fk_rails_...  (user_id => users.id)
#
class Result < ApplicationRecord
  belongs_to :question
  belongs_to :user

end
