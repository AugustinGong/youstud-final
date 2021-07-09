class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_book, only: [:show]
    def index
        @books = Book.all 
    end
    
    #to show the user profile
    def show
    end

    def set_book
        @user = User.find_by_username(params[:username])
    end
    
    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :image, :image_cache)
    end
end
