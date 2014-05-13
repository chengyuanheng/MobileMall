require_dependency "admin_management/application_controller"

module AdminManagement

  class ApplyController < ApplicationController

    def handle_customer_apply

      @all_customer_applies = CustomerManagement::CustomerApply.where(apply_status: false)

    end

    def change_customer_apply_status
      customer = CustomerManagement::CustomerApply.find(params['apply_id'])

      customer.update_attribute('apply_status', true)
      AdminManagementUser.find(customer.user_id).update_attribute('admin', 'seller')

      render text:'ok'
    end
  end
end


