class AddLeadingBidToBids < ActiveRecord::Migration
  def change
    add_column :bids, :leading_bid, :boolean
  end
end
