class ChangePayForwardsColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :pay_forwards, :image_file, :binary
    remove_column :pay_forwards, :image, :string
  end
end
