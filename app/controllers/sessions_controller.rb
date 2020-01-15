class SessionsController < ApplicationController
  def new 
    

  end

  def create 
      @redirect =  params[:name].nil? 
      if @redirect 
        
      else
           @redirect_from_blank = params[:name].blank? 
            if @redirect_from_blank   
          end
      session[:name] = params[:name] 
      end 
      redirect_to @redirect ? {action: :new} :  @redirect_from_blank ? {action: :new} : root_path
  end 

  def destroy  
    unless session[:name].nil? 
      session.clear
    end
  end
end
