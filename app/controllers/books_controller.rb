
class BooksController < ApplicationController
    before_action only: %i[ show edit update destroy]

    def index
      @book = Book.all
    end

    def show
      @book = Book.find(params[:id])
    end 
  
    def new
      @book = Book.new   
    end

    def create 
      @book = Book.new(book_params)
      @book.user_id = session[:user_id]

      if @book.save
        redirect_to user_books_url, notice: "Succesfully added a book"
      else 
        render :new
      end
    end

    def edit

      @book = Book.find_by(id: params[:id])
        
    end
    
    
    def update
      @book = Book.find_by(id: params[:id])
      if @book.update(book_params)
        redirect_to user_book_path, notice: "Succesfully added a updated"
      else 
        render :edit
      end
    end
  

    def destroy
      @book =  Book.find(params[:id])
      @book.destroy
      redirect_to user_book_path, notice: "Book Succesfully destroy"  
    end

    private

    def set_params
      @book = Book.find(params[:id])
    end


    def book_params

      params.require(:book).permit(:name, :author, :addition, :student_id)
      
    end
end
