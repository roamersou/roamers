class CreateInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :interests do |t|
      t.belongs_to :account
      t.belongs_to :pay_forward

      t.timestamps
    end
  end
end
