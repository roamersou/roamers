# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  event_date :date
#  place      :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#

require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
