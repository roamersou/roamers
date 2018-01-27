# == Schema Information
#
# Table name: tag_pay_forwards
#
#  id             :integer          not null, primary key
#  tag_id         :integer
#  pay_forward_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_tag_pay_forwards_on_pay_forward_id  (pay_forward_id)
#  index_tag_pay_forwards_on_tag_id          (tag_id)
#

FactoryBot.define do
  factory :tag_pay_forward do
    
  end
end
