class ShopsController < ApplicationController
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
    @shop = Shop.new(shop_params)

    if @shop.save
      redirect_to @shop
    else
      render :new
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
end
