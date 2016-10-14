class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items =  Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    return redirect_to items_path if @item.save
    render :new
  end

  def edit
  end

  def update
    return redirect_to items_path if @item.update(item_params)
    render :edit

  end

  def show
  end

  def destroy
    @item.destroy()
    redirect_to items_path
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name,:description, :quantity)
  end






end
