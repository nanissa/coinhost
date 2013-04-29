class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders, id:false do |t|
      t.integer :id, limit:8
      t.string :domain
      t.string :email
      t.boolean :use_existing_domain

      t.timestamps
    end
  end
end
