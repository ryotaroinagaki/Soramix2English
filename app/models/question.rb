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

  def self.recommend_questions(current_user)
    bookmarked_question_ids = current_user.bookmarks_questions.pluck(:question_id)
    similar_users = current_user.find_similar_users
    similar_user_question_ids = Bookmark.where(user_id: similar_users.ids)
                                        .where.not(question_id: bookmarked_question_ids)
                                        .distinct.pluck(:question_id)
    already_answered_question_ids = Result.where(user_id: current_user).distinct.pluck(:question_id)

    recommended_question_ids = Question.where(id: similar_user_question_ids)
                                       .where.not(id: bookmarked_question_ids + already_answered_question_ids)
                                       .pluck(:id)

    where(id: recommended_question_ids).sample(3)
  end
end
