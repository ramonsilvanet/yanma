class AddStatusIndexToBikes < ActiveRecord::Migration[6.0]
  def up
    change_column :bikes, :status, :string, null: false
    add_index :bikes, :status
  end

  def down
    remove_index :bikes, :status
    change_column :bikes, :status, :string, null: true    
  end
end
