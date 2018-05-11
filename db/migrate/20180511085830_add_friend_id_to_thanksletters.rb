class AddFriendIdToThanksletters < ActiveRecord::Migration[5.1]
  def change
    add_column :thanksletters, :friend_id, :integer
  end
end
