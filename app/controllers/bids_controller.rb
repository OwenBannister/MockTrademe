class BidsController < ApplicationController

def create
	@auction= Auction.find(params["auction_id"])
	
	@price= params["bid"]
		if @price["amount"].to_i > @auction.price 
	@bid = @auction.bids.build(params["bid"]).save
	@auction.update_attributes(:price => @price["amount"].to_i)
	redirect_to auctions_url(message:"Successfull Bid")
 
else
	redirect_to auctions_url(message:"Unsuccessfull Bid", message_description:"Bid not high enough")
end
    end

end
