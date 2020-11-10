class DashboardsController < ApplicationController
  def index
    @item_listings = ItemListing.where(user: current_user)
    @stores = Store.where(user: current_user)
  end
end
