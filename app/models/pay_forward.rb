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
#  picture    :string(255)
#
# Indexes
#
#  index_pay_forwards_on_account_id  (account_id)
#

class PayForward < ApplicationRecord
  belongs_to :account, optional: true
  mount_uploader :picture, PictureUploader
  has_many :tag_pay_forwards
  has_many :tag, through: :tag_pay_forwards
  has_many :interests
  validate :picture_size

  private

    # アップロードされた画像のサイズをバリデーションする
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
