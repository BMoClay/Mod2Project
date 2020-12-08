class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        
        if user.valid?
            cookies[:user_id] = user.id
            redirect_to users_path
        else
        flash[:errors] = user.errors.full_messages
        redirect_to new_user_path
        end
    end

    # def create
    #     @user = User.new(user_params)
    #     if @user.save
    #         redirect_to path_user
    #     else
    #         flash[:errors] = @user.errors.full_messages
    #         render 'new'
    #     end
    # end

    def destroy
        @user = user.find(params[:id])
        @user.destroy

        redirect_to users_path
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)

        redirect_to user_path(@user)
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        redirect_to users_path
    end


    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end
end