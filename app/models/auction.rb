class Auction < ActiveRecord::Base
  attr_accessible :closing_date, :name, :photo_id, :reserve, :price
validates :name, presence: true, uniqueness: {case_sensitive: false}

has_many:bids
end
