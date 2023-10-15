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
#  level_id                            :bigint
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_level_id              (level_id)
#  index_users_on_reset_password_token  (reset_password_token)
#
# Foreign Keys
#
#  fk_rails_...  (level_id => levels.id)
#
FactoryBot.define do
  factory :user do
    
  end
end
