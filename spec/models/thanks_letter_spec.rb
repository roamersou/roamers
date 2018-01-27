# == Schema Information
#
# Table name: thanks_letters
#
#  id             :integer          not null, primary key
#  account_id     :integer
#  pay_forward_id :integer
#  body           :text(65535)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_thanks_letters_on_account_id      (account_id)
#  index_thanks_letters_on_pay_forward_id  (pay_forward_id)
#

require 'rails_helper'

RSpec.describe ThanksLetter, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
