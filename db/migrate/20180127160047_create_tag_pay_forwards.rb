class CreateTagPayForwards < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_pay_forwards do |t|
      t.belongs_to :tag
      t.belongs_to :pay_forward

      t.timestamps
    end
  end
end
