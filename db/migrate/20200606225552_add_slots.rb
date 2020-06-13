class AddSlots < ActiveRecord::Migration[6.0]
  def change 
    create_table :slots, id: :uuid  do |t|
      t.references :station
      t.references :bike
      t.integer :number, null: false

      t.timestamps
    end
  end
end
