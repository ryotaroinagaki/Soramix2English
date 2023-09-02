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
  has_many :questions, through: :likes
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

  # def add_result_correct
  #   results << question
  # end

  # def add_result_uncorrect
  #   result.create(question: choice.question, result: false)
  # end
end
