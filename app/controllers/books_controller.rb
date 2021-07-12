class BooksController < ApplicationController

    def index
        @books = Book.all
    end
 
    def show
        @book = Book.find(params[:id])
    end
 
    def new
        @book = Book.new
    end

    def usersbook
        @book = Book.find(params[:id])
    end
    
 
    def create
        @book = Book.new(book_params)
        @book.user_id = current_user.id if user_signed_in?
        if @book.save
            redirect_to dashboard_path
        else
            render :new
        end
    end
 
    def edit
        @book = Book.find(params[:id])
    end
 
    def destroy
        @book = Book.find(params[:id])
        @book.destroy
 
        redirect_to dashboard_path
    end
 
    def update
        @book = Book.find(params[:id])
        if @book.update(book_params)
            redirect_to @book
        else
            render :edit
        end
    end
 
    private
    
    def book_params
        params.require(:book).permit(:image, :title, :description)
    end
end
