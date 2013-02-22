class AuctionsController < ApplicationController
  require 'date'
  require 'carrierwave/orm/activerecord'
  def index
    @allauctions = Auction.all.select do |auction|
      auction.state == "open"
  end
  end


def show
  @auction = Auction.find(params[:id])
  @test = Auction.new
	end


def new
		@auction = Auction.new
end

def create
    @auction = Auction.new(params[:auction])
    @auction.price = 0
    @auction.closing_date =DateTime.new.advance(:days => +7)
    @allauctions = Auction.all
   
    # Make a new category if user entered something
    if @auction.category != nil and @auction.category=="" then
     @new_category = Category.new(:name => @auction.category)
     @new_category.save
     @auction.category_id = @new_category.id
     @auction.category = @new_category
   else

    
    end
    if @auction.save
     redirect_to auctions_path
# Handle a successful save.
    else
      render 'new'
    end
end

	def destroy 
    @auction = Auction.find(params[:id])
    @auction.destroy
		redirect_to auctions_path
	end
def closed_auctions
  @allauctions = Auction.all.select do |auction|
    auction.state == "auction_closed"
  end
end



end
