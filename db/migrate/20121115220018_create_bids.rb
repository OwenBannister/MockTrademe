class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :amount
      t.integer :user_id
      t.datetime :bid_time
      t.integer :auction_id

      t.timestamps
    end
  end
end
