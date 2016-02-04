class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.decimal :amount
      t.integer :product_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
