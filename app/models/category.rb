class Category < ActiveRecord::Base
  attr_accessible :name

  has_many:auctions

   CATEGORIES = ['cheap', 'medium', 'expensive']
end
