# == Schema Information
#
# Table name: questions
#
#  id                 :bigint           not null, primary key
#  commentary         :text
#  difficulty         :integer
#  japanese           :text
#  youtube_end_time   :integer          not null
#  youtube_start_time :integer          not null
#  music_id           :bigint           not null
#  youtube_id         :string           not null
#
# Indexes
#
#  index_questions_on_music_id  (music_id)
#
# Foreign Keys
#
#  fk_rails_...  (music_id => musics.id)
#
class Question < ApplicationRecord
  belongs_to :music
  has_many :lyrics, dependent: :destroy
  has_many :choices, dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :users, through: :bookmarks

  enum difficulty: { easy: 0, normal: 1, difficult: 2 }

  def self.ransackable_attributes(auth_object = nil)
    ["artist_name"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["music"]
  end
end
