class AddOpenedDateToBids < ActiveRecord::Migration
  def change
    add_column :bids, :opened_date, :datetime
  end
end
