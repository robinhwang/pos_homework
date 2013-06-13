class AddVipToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :vip, :boolean, default: false
  end
end
