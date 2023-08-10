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
class Music < ApplicationRecord
  has_one :question
end
