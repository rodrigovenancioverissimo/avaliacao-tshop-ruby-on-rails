class DashboardController < ApplicationController
  def index
    # List all of the Items that are owned by the logged in User's Business
    if current_business.present?
      @items = Item.where(business_id: current_business.id)
    else
      # Unauthorized
      redirect_to root_url
    end
  end
end
