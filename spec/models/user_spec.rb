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
#  picture         :string(255)
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#

require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
