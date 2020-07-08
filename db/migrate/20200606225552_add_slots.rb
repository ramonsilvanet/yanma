class AddSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :slots, id: :uuid  do |t|
      t.references :station, null: false, type: :uuid, foreign_key: true, index: true
      t.references :bike, null: true, type: :uuid
      t.integer :number, null: false

      t.timestamps
    end
  end
end
