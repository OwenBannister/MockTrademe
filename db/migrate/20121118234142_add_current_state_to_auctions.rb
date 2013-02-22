class AddCurrentStateToAuctions < ActiveRecord::Migration
  def change
    add_column :auctions, :current_state, :string
  end
end
