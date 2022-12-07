class ApplicationController < ActionController::Base
    # before_action :set_current_student
    # current_user = nil
    # binding.break
    before_action :authenticate_user!
    # def set_current_student
    #     if session[:student_id]
    #         Current.student = Student.find_by(id: session[:student_id])
    #      end 
    # end
end
