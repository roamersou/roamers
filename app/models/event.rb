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

class Event < ApplicationRecord
end
