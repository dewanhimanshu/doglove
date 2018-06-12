class UsersController < ApplicationController
	def dashbord
	 if user_signed_in? 
	 @user = current_user 
	end
    else
      redirect_to(new_user_session_path)     
	end
end
