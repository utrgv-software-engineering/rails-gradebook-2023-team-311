class SessionsController < Devise::SessionsController
    def create
      self.resource = warden.authenticate!(auth_options)
      if self.resource && self.resource.active_for_authentication?
        set_flash_message!(:notice, :signed_in)
        sign_in(resource_name, resource)
        yield resource if block_given?
        respond_with resource, location: after_sign_in_path_for(resource)
      else
        flash.now[:alert] = "Invalid email or password."
        self.resource = resource_class.new(sign_in_params)
        clean_up_passwords(resource)
        respond_with(resource, serialize_options(resource))
      end
    end      
  end
  