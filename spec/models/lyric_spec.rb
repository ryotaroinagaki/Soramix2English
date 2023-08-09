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
require 'rails_helper'

RSpec.describe Lyric, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
