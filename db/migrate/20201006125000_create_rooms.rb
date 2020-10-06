class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :adress
      t.string :website
      t.integer :capacity

      t.timestamps
    end
  end
end
