class SessionsController < ApplicationController

    def new
    end

    def create 
        if !params[:name].empty? && !params[:name].nil?
            session[:name] = params[:name]
        else 
            redirect_to '/'
        end
    end 

    def destroy
        if session[:name].nil?
            session[:name] = nil
        else 
            session.delete :name 
        end  
    end

    def show 
    end
end
