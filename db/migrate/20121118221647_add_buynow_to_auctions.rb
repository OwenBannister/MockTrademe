class AddBuynowToAuctions < ActiveRecord::Migration
  def change
    add_column :auctions, :buynow, :integer
  end
end
