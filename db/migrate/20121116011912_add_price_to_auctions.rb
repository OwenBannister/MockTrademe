class AddPriceToAuctions < ActiveRecord::Migration
  def change
    add_column :auctions, :price, :int
  end
end
