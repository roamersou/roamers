# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  remember_digest :string(255)
#  self_intro      :string(255)
#  tw_account      :string(255)
#  fb_account      :string(255)
#  insta_account   :string(255)
#  admin           :boolean          default(FALSE)
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#

FactoryBot.define do
  factory :user do
    name "MyString"
    email "MyString"
  end
end
