class MainController < ApplicationController
   def index
      @book = Book.all
   end 
end