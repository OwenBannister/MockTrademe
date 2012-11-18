class Bid < ActiveRecord::Base
  attr_accessible :amount, :auction_id, :bid_time, :user_id
end
