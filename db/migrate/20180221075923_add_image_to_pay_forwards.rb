class AddImageToPayForwards < ActiveRecord::Migration[5.1]
  def change
    add_column :pay_forwards, :image, :string
  end
end
