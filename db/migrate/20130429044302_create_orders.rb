class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :domain
      t.string :email
      t.boolean :use_existing_domain

      t.timestamps
    end
  end
end
