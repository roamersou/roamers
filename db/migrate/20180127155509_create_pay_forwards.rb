class CreatePayForwards < ActiveRecord::Migration[5.1]
  def change
    create_table :pay_forwards do |t|
      t.belongs_to :account
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
