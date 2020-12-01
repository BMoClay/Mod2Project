class SessionsController < ApplicationController

    def logout
        cookies.delete(:user_id)
        redirect_to new_user_path
    end
    
    def new 
    end          # not creating anything in database so dont need to use
                 # strong params		
    def login
        #find the user and then compare the passwords
        user = User.find_by(username: params[:session][:username])
        
        if user && user.authenticate(params[:session][:password])
            cookies[:user_id] = user.id
            redirect_to posts_path
        else
            flash[:errors] = "Username or password doesnt match"
            redirect_to new_login_path
        end
    end

end