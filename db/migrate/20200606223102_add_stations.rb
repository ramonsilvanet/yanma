class AddStations < ActiveRecord::Migration[6.0]
  def change 
    create_table :stations, id: :uuid  do |t|    
      t.string :name
      t.string :status, default: 'active'
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
