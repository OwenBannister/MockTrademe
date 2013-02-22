class Bid < ActiveRecord::Base
  attr_accessible :amount, :auction_id, :bid_time, :user_id, :state

  belongs_to:auctions
 

state_machine :state, initial: :leading do 
	event :outbid do
		transition :leading => :trailing
	end
	event :win_auction do
		transition :leading => :winning_bid, :trailing => :winning_bid
	end

	event :lose_auction do	
		transition :leading => :losing_bid, :trailing => :losing_bid
	end
end

end
