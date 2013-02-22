class AddStateToBids < ActiveRecord::Migration
  def change
    add_column :bids, :state, :string
  end
end
