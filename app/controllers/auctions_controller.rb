class AuctionsController < ApplicationController

  def index
  @allauctions = Auction.all
  end


def show
  @allauctions = Auction.all
	end


def new
		@auction = Auction.new
end

def create
    @auction = Auction.new(params[:auction])
    @auction.price = 0
    if @auction.save
    	@allauctions = Auction.all
      render 'show'
# Handle a successful save.
    else
      render 'new'
    end
end

	def destroy 
    @auction = Auction.find(params[:id])
    @auction.destroy
		redirect_to auctions_url
	end




end
