class SessionsController < ApplicationController
    
    def new
        
    end

    def create
        @student = Student.find_by(email: params[:email])
        if @student.present? && @student.authenticate(params[:password])
            session[:student_id] = @student.id
            redirect_to new_path, notice:"logged in successfully"
       else
        flash[:alert] = "invalid email or Password"
        render :new
       end
    end
    
    
    def destroy
        #Current.student.destroy
        session[:user_id] = nil
        # if session[:student_id].present?
        redirect_to sign_in_path, notice:"logged out"
        # end
    end
end 