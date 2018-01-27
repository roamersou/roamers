# == Schema Information
#
# Table name: interests
#
#  id             :integer          not null, primary key
#  account_id     :integer
#  pay_forward_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_interests_on_account_id      (account_id)
#  index_interests_on_pay_forward_id  (pay_forward_id)
#

class Interest < ApplicationRecord
  belongs_to :account
  belongs_to :pay_forward
end
