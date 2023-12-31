# == Schema Information
#
# Table name: likes
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_likes_on_question_id              (question_id)
#  index_likes_on_user_id                  (user_id)
#  index_likes_on_user_id_and_question_id  (user_id,question_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Like, type: :model do
  it 'has a valid factory' do
    expect(build(:like)).to be_valid
  end
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:question) }
  end
end
