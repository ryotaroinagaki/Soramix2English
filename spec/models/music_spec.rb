# == Schema Information
#
# Table name: musics
#
#  id          :bigint           not null, primary key
#  artist_name :string           not null
#  category    :string
#  music_name  :string           not null
#  year        :integer
#
require 'rails_helper'

RSpec.describe Music, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
