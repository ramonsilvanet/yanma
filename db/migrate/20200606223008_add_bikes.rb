class AddBikes < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :bikes, id: :uuid  do |t|
      t.string :model
      t.string :status, default: 'active'
      
      t.timestamps
    end
  end
end
