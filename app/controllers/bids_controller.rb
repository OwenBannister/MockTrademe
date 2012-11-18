class BidsController < ApplicationController

def create
	@auction= Auction.find(params["auction_id"])
	@bid = @auction.bids.build(params["bid"]).save
	redirect_to auctions_url
end

end
