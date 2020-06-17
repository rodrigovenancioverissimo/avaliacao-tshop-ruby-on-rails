class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update]


  def show

  end

  def new
    @business = Business.new
  end

  def edit

  end

  def create
    @business = Business.new(business_params)
    @business.user = current_user
    if @business.save
      redirect_to @business, notice: 'business was successfully created.'
    else
      render :new
    end
  end

  def update
    if @business.update(business_params)
      redirect_to @business, notice: 'business was successfully updated.'
    else
      render :edit
    end
  end

  def set_business
    @business = Business.find(params[:id])
  end

  def business_params
    params.require(:business).permit(:name, :address, :city)
  end
end
