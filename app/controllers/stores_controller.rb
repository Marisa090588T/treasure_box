class StoresController < ApplicationController
  before_action :set_store, only: [:edit, :update, :destroy]

  def index
    @stores = Store.where(user: current_user)
  end

  # def show
  # end

  def new
    @store = Store.new
    @item_listing = ItemListing.find(params[:item_listing_id])
  end

  def create
    @store = Store.new
    @item_listing = ItemListing.find(params[:item_listing_id])
    @store.item_listing = @item_listing
    @store.user = current_user

    if @store.save
      # @item_listing = ItemListing.find(params[:item_listing_id])
      # @item_listing.available = false
      # @item_listing.save
      redirect_to store_path(@store), notice: 'Invest was successfully done.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @item_listing = ItemListing.find(params[:item_listing_id])
    if @store.update(store_params)
      redirect_to @store, notice: 'Invest was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @store.destroy
    redirect_to stores_path, notice: 'Invest was successfully canceled.'
  end

  private

  def set_store
    @store = store.find(params[:id])
  end

  # def store_params
  #   params.require(:store).permit(:total_price, :start_date, :end_date, :status)
  # end
end
