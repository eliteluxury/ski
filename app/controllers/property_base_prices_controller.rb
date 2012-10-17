class PropertyBasePricesController < ApplicationController
  before_filter :admin_required
  before_filter :no_browse_menu
  before_filter :find_property_base_price, only: [:edit, :update, :destroy]

  def index
    @property_base_prices = PropertyBasePrice.order('number_of_months')
  end

  def new
    @property_base_price = PropertyBasePrice.new
  end

  def create
    @property_base_price = PropertyBasePrice.new(params[:property_base_price])

    if @property_base_price.save
      redirect_to(property_base_prices_path, notice: t('notices.created'))
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @property_base_price.update_attributes(params[:property_base_price])
      redirect_to(property_base_prices_path, notice: t('notices.saved'))
    else
      render 'edit'
    end
  end

  def destroy
    @property_base_price.destroy
    redirect_to(property_base_prices_path, notice: t('notices.deleted'))
  end

  protected

  def find_property_base_price
    @property_base_price = PropertyBasePrice.find(params[:id])
  end
end
