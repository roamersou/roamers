class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.date :event_date
      t.text :place

      t.timestamps
    end
  end
end
