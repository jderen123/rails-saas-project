module DevisePermittedParameters
	extend ActiveSupport::Concern

	included do
		before_action :configure_permitted_parameters
	end

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up,        keys: [:email, :password, :password_confirmation, :is_admin])
		devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :current_password, :is_admin])

	end

end

DeviseController.send :include, DevisePermittedParameters
