class PagesController < ApplicationController

    def index
        @books = Book.all
    end

    def new
        @student = Student.new
    end

end