class BasketLine
  attr_accessor :advert, :coupon, :description, :price, :windows

  def order_description
    if @advert
      if @coupon
        "#{@advert.months.to_s} month(s): #{@advert} [#{@description}]"
      else
        "#{@advert.months.to_s} month(s): #{@advert}"
      end
    else
      @description
    end
  end
end
