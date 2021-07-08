class BooksController < ApplicationController

    def new
        @book = Book.new
    end
    
    def create
        @book = Book.new(book_params)
        @book.user_id = current_user.id if user_signed_in?
        if @book.save
            redirect_to dashboard_path, flash: { success: "Libro salvato correttamente!"}
        else
            redirect_to new_book_path, flash: { success: "Libro non è stato salvato correttamente!"}
        end
    end

    def show
    end
    
    private

    def book_params
        params.require(:book).permit(:image, :title, :description)
    end
    
end
