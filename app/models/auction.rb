class Auction < ActiveRecord::Base
require 'carrierwave/orm/activerecord'
  attr_accessible  :name, :reserve, :price, :buynow, :state, :image, :image_cache, :opened_date, :closing_date, :category_id, :category
validates :name, presence: true, uniqueness: {case_sensitive: false}
has_many:bids
mount_uploader :image, AvatarUploader

state_machine :state, initial: :open do 
	event :win_auction do
		transition :open => :auction_closed
	end


end




end
