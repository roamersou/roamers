# == Schema Information
#
# Table name: pay_forwards
#
#  id         :integer          not null, primary key
#  account_id :integer
#  title      :string(255)
#  body       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  date       :string(255)
#  place      :string(255)
#  image      :string(255)
#
# Indexes
#
#  index_pay_forwards_on_account_id  (account_id)
#

require 'rails_helper'

RSpec.describe PayForward, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
