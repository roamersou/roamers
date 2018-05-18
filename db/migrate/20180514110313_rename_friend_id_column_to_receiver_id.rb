class RenameFriendIdColumnToReceiverId < ActiveRecord::Migration[5.1]
  def change
    rename_column :thanksletters, :friend_id, :receiver_id
  end
end
