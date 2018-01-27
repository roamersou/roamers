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

FactoryBot.define do
  factory :thanks_letter do
    
  end
end
