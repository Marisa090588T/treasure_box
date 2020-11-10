class DashboardsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @item_listings = ItemListing.where(user: current_user)
    @stores = Store.where(user: current_user)
  end
end
