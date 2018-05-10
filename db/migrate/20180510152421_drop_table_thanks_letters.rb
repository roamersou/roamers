class DropTableThanksLetters < ActiveRecord::Migration[5.1]
  def change
    drop_table :thanks_letters
  end
end
