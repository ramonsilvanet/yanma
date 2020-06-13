class AddBillingHistory < ActiveRecord::Migration[6.0]
  def change 
    create_table :billing_history, id: :uuid  do |t|
      t.references :user
      t.references :billing_plan

      t.timestamps
    end
  end
end
