class AddUniquenessToSlotNumber < ActiveRecord::Migration[6.0]
  def up
    add_index :slots, %i[id number], unique: true, name: 'index_slot_number_uniqueness'
  end

  def down
    remove_index :slots, name: 'index_slot_number_uniqueness'
  end
end
