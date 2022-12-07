class AboutController < ApplicationController
   
        
  def index
    @about = About.all
  end

      
  def show
    @about = About.find(params[:id])
  end

  def new
    
  end
  
end 