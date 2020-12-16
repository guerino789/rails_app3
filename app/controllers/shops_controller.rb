class ShopsController < ApplicationController

  skip_before_action :verified_shop, only: [:new, :create]

  def index 
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def create
    if (shop = Shop.create(shop_params))
      session[:shop_id] = shop.id
      redirect_to shop_path(shop)
   else
      render 'new'
   end
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])

    @shop.update(shop_params)

    if @shop.save
      redirect_to @shop
    else
      render :edit
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:department, :manager, :email, :password)
  end

end

