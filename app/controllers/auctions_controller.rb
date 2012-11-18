class AuctionsController < ApplicationController

  def index
  @allauctions = Auction.all
  end


def show
  @auction = Auction.find(params[:id])
	end


def new
		@auction = Auction.new
end

def create
    @auction = Auction.new(params[:auction])
    @auction.price = 0
    if @auction.save
    	@allauctions = Auction.all
     redirect_to auction_path
# Handle a successful save.
    else
      render 'new'
    end
end

	def destroy 
    @auction = Auction.find(params[:id])
    @auction.destroy
		redirect_to auction_path
	end




end
