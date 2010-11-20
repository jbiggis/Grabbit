class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.string :title
      t.decimal :price
      t.decimal :value
      t.string :description
      t.string :fine_print
      t.datetime :start_time
      t.date_time :end_time

      t.timestamps
    end
  end

  def self.down
    drop_table :deals
  end
end
