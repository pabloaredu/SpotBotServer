class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :license_plate
      t.string :password_digest
      t.string :email
      t.string :billing_address
      t.string :card_holder_name
      t.integer :credit_card_number
      t.datetime :expiry_date
      t.integer :cvc
      t.timestamps
    end
  end
end
