class ApplicationController < ActionController::Base

    # before_filter :store_location
    # def store_location
    #   unless params[:controller] == "devise/sessions"
    #     url = "/users/sign_in"
    #     session[:user_return_to] = url
    #   end
    # end
  
    # def stored_location_for(resource_or_scope)
    #   session[:user_return_to] || super
    # end
  
    # def after_sign_in_path_for(resource)
    #   stored_location_for(resource) || root_path
    # end
end
