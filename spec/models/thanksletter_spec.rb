# == Schema Information
#
# Table name: thanksletters
#
#  id          :integer          not null, primary key
#  content     :text(65535)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  receiver_id :integer
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

require 'rails_helper'

RSpec.describe Thanksletter, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
