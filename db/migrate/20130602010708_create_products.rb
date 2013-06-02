class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :number
      t.float :price
      t.text :intro
      t.boolean :published, :default => true

      t.timestamps
    end
  end
end
