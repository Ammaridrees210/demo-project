class RegistrationsController < ApplicationController
    
    def index
        @student= Student.all
    end
    
    def new
        @student = Student.new
    end

    def create 
       @student= Student.new(student_params)
       if @student.save
        session[:student_id] = @student.id
        redirect_to new_path, notice: "Succesfully Logged in"
       else 
        render :new
        end
    end

    private

    def student_params 
        params.permit(:email, :password, :password_confirmation) 
    end
    
end