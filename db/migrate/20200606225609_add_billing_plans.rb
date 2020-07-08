class AddBillingPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :billing_plans, id: :uuid  do |t|
      t.string :name
      t.float :value
      t.string :recurrence

      t.timestamps
    end
  end
end
