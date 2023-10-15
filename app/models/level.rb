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
class Level < ApplicationRecord
end
