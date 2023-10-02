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
#  role                                :integer          default("general"), not null
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
  has_many :results, dependent: :destroy
  has_many :questions, through: :results
  has_many :likes, dependent: :destroy
  has_many :likes_questions, through: :likes, source: :question
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarks_questions, through: :bookmarks, source: :question
  has_one_attached :avatar
  enum role: { general: 0, admin: 1 }

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :reset_password_token, presence: true, uniqueness: true, allow_nil: true

  validates :email, uniqueness: true, presence: true
  validates :name, presence: true, length: { maximum: 255 }

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
end
