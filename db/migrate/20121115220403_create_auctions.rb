class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :name
      t.datetime :closing_date
      t.integer :reserve
      t.integer :phto_id

      t.timestamps
    end
  end
end
