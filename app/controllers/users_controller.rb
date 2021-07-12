class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_book, only: [:show]


    def index
        @users = User.all
    end
 
    def show
    end
 
    def new
        @user = User.new
    end

    def showall
        
    end
    
 
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to @user
        else
            render :new
        end
    end

    def usersbook
        @book = current_user.books
    end
    
 
    def edit
        authorize! :edit, User, :message => "You are not authorized"
        @user = User.find(params[:id])
    end
 
    def destroy
        authorize! :destroy, User, :message => "You are not authorized"
        @user = User.find(params[:id])
        @user.destroy
 
        redirect_to showall_path
    end
 
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to @user
        else
            render :edit
        end
    end
 
    private

    def set_book
        @user = User.find_by_username(params[:username])
    end
    
    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :image, :image_cache)
    end
 
 end