class AddUsers < ActiveRecord::Migration[6.0]
  def change 
    create_table :users, id: :uuid  do |t|
      t.string :fullname
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
