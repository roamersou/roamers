class AddSelfIntroToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :self_intro, :string
  end
end