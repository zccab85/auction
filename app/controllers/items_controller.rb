class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new 
  end

  def create
  @item = Item.new(item_params)
  @item.save
  redirect_to @item
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to @item
  end

  private

  def item_params
  params.require(:item).permit(:name, :price, :seller, :description, :email, :image_url)
  end
end