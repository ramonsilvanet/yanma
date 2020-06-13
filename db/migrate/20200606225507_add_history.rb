class AddHistory < ActiveRecord::Migration[6.0]
  def change 
    create_table :history, id: :uuid  do |t|
      t.references :station
      t.references :bike
      t.references :user

      t.timestamps
    end
  end
end
