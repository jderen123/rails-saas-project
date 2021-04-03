class AddColumnsToPayments < ActiveRecord::Migration[5.2]
  def change
    add_column :payments, :card_number, :string
    add_column :payments, :card_cvv, :string
    add_column :payments, :card_expires_year, :string
    add_column :payments, :card_expires_month, :string
  end
end
