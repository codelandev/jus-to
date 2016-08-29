class Users::SessionsController < Devise::SessionsController
  def create
    if request.xhr?
      if warden.authenticate?(auth_options)
        self.resource = warden.authenticate!(auth_options)
        set_flash_message!(:notice, :signed_in)
        sign_in(resource_name, resource)
        flash[:notice] = I18n.t('devise.sessions.signed_in')
        render js: "window.location = '#{after_sign_in_path_for(resource)}'"
      else
        self.resource = resource_class.new(sign_in_params)
        self.resource.errors.add(:email, I18n.t('devise.failure.invalid', authentication_keys: resource_class.authentication_keys))
        flash[:alert] = I18n.t('devise.failure.invalid', authentication_keys: resource_class.authentication_keys)
      end
    else
      super
    end
  end
end
