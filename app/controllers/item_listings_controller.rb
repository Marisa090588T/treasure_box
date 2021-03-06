class ItemListingsController < ApplicationController
  def index
    @item_listings = ItemListing.all
  end

  def show
    @item_listing = ItemListing.find(params[:id])
    @user = @item_listing.user
    @store = Store.new
  end

  def new
    @item_listing = ItemListing.new
    @user = @item_listing.user
  end

  def create
    @item_listing = ItemListing.new(item_listing_params)
    @user = current_user
    @item_listing.user = @user
    if @item_listing.save
      redirect_to item_listing_path(@item_listing)
    else
      render :new
    end
  end

  def edit
    @item_listing = ItemListing.find(params[:id])
  end

  def update
    @item_listing = ItemListing.find(params[:id])
    @item_listing.update(item_listing_params)
    redirect_to item_listing_path(@item_listing)
  end

  def destroy
    @item_listing = ItemListing.find(params[:id])
    @item_listing.destroy
    respond_to do |format|
      format.html { redirect_to item_listings_path, notice: 'Item was successfully deleted!' }
    end
  end

  private

  def item_listing_params
    params.require(:item_listing).permit(:item_name, :description, :price, :item_status, :photo)
  end
end
