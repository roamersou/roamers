class CreateThanksLetters < ActiveRecord::Migration[5.1]
  def change
    create_table :thanks_letters do |t|
      t.belongs_to :account
      t.belongs_to :pay_forward
      t.text :body

      t.timestamps
    end
  end
end
