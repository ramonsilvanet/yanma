class AddBillingHistory < ActiveRecord::Migration[6.0]
  def change
    create_table :billing_history, id: :uuid  do |t|
      t.references :user, null: false, type: :uuid, foreign_key: true, index: true
      t.references :billing_plan, null: false, type: :uuid, foreign_key: true, index: true

      t.timestamps
    end
  end
end
