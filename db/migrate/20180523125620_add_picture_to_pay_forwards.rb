class AddPictureToPayForwards < ActiveRecord::Migration[5.1]
  def change
    add_column :pay_forwards, :picture, :string
    remove_column :pay_forwards, :image_name, :string
    remove_column :pay_forwards, :image_file, :binary
  end
end
