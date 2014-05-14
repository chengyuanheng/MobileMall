class AddAddressToCustomerManagementOrder < ActiveRecord::Migration
  def change
    add_column :customer_management_orders, :address, :string
    add_column :customer_management_orders, :phone, :integer
  end
end
