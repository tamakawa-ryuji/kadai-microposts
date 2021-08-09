class ApplicationController < ActionController::Base
    
    include SessionsHelper 
    include Pagy::Backend
    
    private
    
    def require_user_logged_in
        unless logged_in?
            redirect_tp login_url
        end 
    end 
end
