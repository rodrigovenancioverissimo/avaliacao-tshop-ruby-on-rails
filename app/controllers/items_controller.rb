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

  def create
    # TODO: [TAKI-001] Finish the implementation of Create/Update/Delete for Items
  end

  def Update
    # TODO: [TAKI-001] Finish the implementation of Create/Update/Delete for Items
  end

  def destroy
    # TODO: [TAKI-001] Finish the implementation of Create/Update/Delete for Items
  end
end
