class SessionsController < ApplicationController
    def new
    end
    
    
    def create
        person = User.where(email: params[:email], password: params[:password]).take
        
        unless person.nil?
            session[:user_id] = person.id
        end
        
        redirect_to '/'
    end
    
    def destroy
        reset_session
        redirect_to '/'
    end
end
