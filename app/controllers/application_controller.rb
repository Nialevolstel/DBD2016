class ApplicationController < ActionController::Base
	  # Prevent CSRF attacks by raising an exception.
	  # For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception

  	before_filter :validate_session


	private

	def validate_session
		if user_signed_in?
			
		else
			redirect_to login_path
		end
	end
  	protected


end
