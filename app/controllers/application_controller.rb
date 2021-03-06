class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
  	if user_signed_in?
  		redirect_to sites_url, :alert => exception.message
  	else
  		redirect_to root_url, :alert => exception.message
  	end
  end
end
