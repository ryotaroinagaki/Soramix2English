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

  scope :sorted, -> { order(id: :desc) }
  scope :includes_music, -> { includes([:music]) }
  scope :with_music, -> { joins(:music) }
  scope :search_artist_name, ->(query) { where('artist_name LIKE ?', "%#{query}%") }
  scope :question_difficulty, ->(question) { where(difficulty: question.difficulty) }
  scope :select_difficulty, ->(difficulty) { where(difficulty: Question.difficulties[difficulty]) }
  scope :next, ->(question) { where('id > ?', question.id) }

  def self.ransackable_attributes(_auth_object = nil)
    ['artist_name']
  end

  def self.ransackable_associations(_auth_object = nil)
    ['music']
  end
end
