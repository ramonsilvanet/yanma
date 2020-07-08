class CreateUnlockPassword < ActiveRecord::Migration[6.0]
  def change
    create_table :unlock_passwords, id: :uuid do |t|
      t.references :station, null: false, type: :uuid, foreign_key: true, index: true
      t.references :user, null: false, type: :uuid, foreign_key: true, index: true

      t.string :password

      t.timestamps
    end
  end
end
