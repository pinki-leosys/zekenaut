class ApplicationController < ActionController::Base
  protect_from_forgery
  

def after_sign_in_path_for(resource)
	if current_user.has_role? :admin
      admins_path
	else
      new_contests_attempt_path(current_user) #your path
    end
end
end