class IndexController < ApplicationController
   def index
      if user_signed_in?
         if current_user.role == "buyer"
           redirect_to buyer_dashboard_path
         else
           redirect_to seller_dashboard_path
         end
       else
         redirect_to new_user_session_path
      end       
   end 
end
