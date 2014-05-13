class CustomerManagementCustomerApply < ActiveRecord::Migration
  def change
    create_table :customer_management_customer_applies do |t|

      t.integer :user_id
      t.string :name
      t.integer :age
      t.integer :ID_number
      t.string :photo
      t.integer :phone
      t.string :address
      t.boolean :apply_status, :default => false

      t.timestamps
    end
  end
end
