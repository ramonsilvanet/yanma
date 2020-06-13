class AddUniquenessToStationName < ActiveRecord::Migration[6.0]
  def up
    add_index :stations, :name, unique: true
  end

  def down
    remove_index :stations, :name
  end
end
