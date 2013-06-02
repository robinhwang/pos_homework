class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user
      t.integer :number, null: false
      t.float :total_price
      t.string :note

      t.timestamps
    end
  end
end
