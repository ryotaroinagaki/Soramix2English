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
FactoryBot.define do
  factory :music do
    sequence(:music_name) { "Music_name" }
    sequence(:artist_name) { "Artist_name" }
    sequence(:year) { 2000 }
  end
end
