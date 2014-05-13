module CustomerManagement
  class CustomerApply < ActiveRecord::Base

    attr_accessible :user_id, :name, :age, :ID_number, :photo, :phone, :address

    def self.handle_apply(user_id, customer_apply)

      uploader = SellerManagement::ImageUploader.new
      uploader.store!(customer_apply[:image])

      create(user_id:user_id,
             name: customer_apply[:name],
             age: customer_apply[:age],
             ID_number: customer_apply[:ID_number],
             phone: customer_apply[:phone],
             address: customer_apply[:address],
             photo:uploader.url)

    end


  end
end