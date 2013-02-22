class BidsController < ApplicationController

def create
	@auction= Auction.find(params["auction_id"])
	
	@price= params["bid"]
	if @price["amount"].to_i > @auction.price then 
		Bid.all.each do |bid|
			bid.outbid	
		end
		@bid = @auction.bids.build(params["bid"])
		@bid.save
		@auction.update_attributes(:price => @price["amount"].to_i)

		if @price["amount"].to_i == @auction.buynow then 
			@auction.win_auction
			Bid.all.each do |bid|
				bid.lose_auction
			end
			@bid.win_auction
		 	redirect_to auctions_url(message: "Congratulations: Auction won")
		else
			redirect_to auctions_url(message:"Successfull Bid")
		end	
	else
		redirect_to auctions_url(message:"Unsuccessfull Bid", message_description:"Bid not high enough")
	end 
end
end

