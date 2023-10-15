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
require 'rails_helper'

RSpec.describe Level, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
