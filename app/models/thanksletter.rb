# == Schema Information
#
# Table name: thanksletters
#
#  id         :integer          not null, primary key
#  content    :text(65535)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  friend_id  :integer
#
# Indexes
#
#  index_thanksletters_on_user_id                 (user_id)
#  index_thanksletters_on_user_id_and_created_at  (user_id,created_at)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Thanksletter < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 500}
end
