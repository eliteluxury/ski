class WindowBasePricesController < ApplicationController
  before_filter :admin_required
  before_filter :no_browse_menu
  before_filter :find_window_base_price, :only => [:edit, :update, :destroy]

  def index
    @window_base_prices = WindowBasePrice.all(:order => :quantity)
  end

  def new
    @window_base_price = WindowBasePrice.new
  end

  def create
    @window_base_price = WindowBasePrice.new(params[:window_base_price])

    if @window_base_price.save
      redirect_to(window_base_prices_path, :notice => t('notices.created'))
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @window_base_price.update_attributes(params[:window_base_price])
      redirect_to(window_base_prices_path, :notice => t('notices.saved'))
    else
      render "edit"
    end
  end

  def destroy
    @window_base_price.destroy
    redirect_to(window_base_prices_path, :notice => t('notices.deleted'))
  end

  protected

  def find_window_base_price
    @window_base_price = WindowBasePrice.find(params[:id])
  end
end
