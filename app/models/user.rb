# == Schema Information
#
# Table name: users
#
#  id                                  :bigint           not null, primary key
#  access_count_to_reset_password_page :integer          default(0)
#  avatar                              :string
#  crypted_password                    :string
#  email                               :string           not null
#  name                                :string           not null
#  reset_password_email_sent_at        :datetime
#  reset_password_token                :string
#  reset_password_token_expires_at     :datetime
#  salt                                :string
#  created_at                          :datetime         not null
#  updated_at                          :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token)
#
class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :reset_password_token, presence: true, uniqueness: true, allow_nil: true

  validates :email, uniqueness: true, presence: true
  validates :name, presence: true, length: { maximum: 255 }

  has_many :results, dependent: :destroy
  has_many :questions, through: :results
  has_many :likes, dependent: :destroy
  has_many :likes_questions, through: :likes, source: :question
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarks_questions, through: :bookmarks, source: :question
  has_one_attached :avatar

  def like(question)
    likes_questions << question
  end

  def unlike(question)
    likes_questions.destroy(question)
  end

  def like?(question)
    likes_questions.include?(question)
  end

  def bookmark(question)
    bookmarks_questions << question
  end
  
  def unbookmark(question)
    bookmarks_questions.destroy(question)
  end
  
  def bookmark?(question)
    bookmarks_questions.include?(question)
  end
  
  # def add_result_correct
  #   results << question
  # end

  # def add_result_uncorrect
  #   result.create(question: choice.question, result: false)
  # end

  def similar_users
    @bookmark_ids = current_user.bookmarks_questions.pluck(:question_id)
    user_ids = Bookmark.where(question_id: @bookmark_ids).pluck(:user_id)
    User.where(id: user_ids)
  end

  def recommend_questions
    questions_ids = Bookmark.where(user_id: similar_users.ids).distinct.pluck(:question_id)
    recommend_questions_ids = Question.where(id:questions_ids).where.not(id: @bookmark_ids)
    recommend_questions = recommend_questions_ids.pluck(:id) - Result.where(user_id: current_user).distinct.pluck(:question_id)
    recommend_5questions = recommend_questions.sample(3)
  end
end
