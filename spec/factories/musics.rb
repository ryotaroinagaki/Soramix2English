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
    music_name { "MyString" }
    artist_name { "MyString" }
    category { "MyString" }
    year { 1 }
  end
end
