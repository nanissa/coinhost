class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :order_id, limit: 8
      t.integer :satoshi,  limit: 8
      t.string :transaction_hash
      
      t.timestamps
    end
  end
end
