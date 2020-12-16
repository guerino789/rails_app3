class SessionsController < ApplicationController
    skip_before_action :verified_shop, only: [:new, :create]

end
    def new
    end
  
    def create
        if @shop = Shop.find_by(manager: params[:manager][:email])
          session[:shop_id] = @shop.id
          redirect_to shop_path(@shop)
        else
          render 'new'
        end
      end
  
      def destroy
        session.delete("shop_id")
        redirect_to root_path
      end
  end