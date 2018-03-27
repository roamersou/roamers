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
#  image_name :string(255)
#  image_file :binary(65535)
#
# Indexes
#
#  index_pay_forwards_on_account_id  (account_id)
#

class PayForward < ApplicationRecord
  belongs_to :account, optional: true
  has_many :tag_pay_forwards
  has_many :tag, through: :tag_pay_forwards
  has_many :interests

end
