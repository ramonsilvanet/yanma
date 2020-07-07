class CreateUnlockPassword < ActiveRecord::Migration[6.0]
  def change
    create_table :unlock_passwords, id: :uuid do |t|
      t.references :station
      t.references :user

      t.string :password

      t.timestamps
    end
  end
end
