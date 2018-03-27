class AddImageNameToPayForwards < ActiveRecord::Migration[5.1]
  def change
    add_column :pay_forwards, :image_name, :string
  end
end