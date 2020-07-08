class AddHistory < ActiveRecord::Migration[6.0]
  def change
    create_table :history, id: :uuid  do |t|
      t.references :station, null: false, type: :uuid, foreign_key: true, index: true
      t.references :bike, null: false, type: :uuid, foreign_key: true, index: true
      t.references :user, null: false, type: :uuid, foreign_key: true, index: true

      t.timestamps
    end
  end
end
