class ItemsController < ApplicationController

  def index
    # List all of the Items that are owned by the logged in User's Business
    if current_business.present?
      @items = current_business.items
    else
    # If business not yet created, redirect to create a new business
      redirect_to new_business_path, notice: "Please create a business."
    end
  end

  def new 

  end

  def edit

  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item, notice: 'item was successfully created.'
    else
      render :new
    end
  end

  def Update
    if @item.update(item_params)
      redirect_to @item, notice: 'item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_url, notice: 'item was successfully destroyed.'
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price)
  end

end
