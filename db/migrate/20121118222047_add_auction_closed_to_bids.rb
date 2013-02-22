class AddAuctionClosedToBids < ActiveRecord::Migration
  def change
    add_column :bids, :auction_closed, :boolean
  end
end
