class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :deal_id
      t.integer :user_id
      t.string :coupon_no
      t.datetime :active_time

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
