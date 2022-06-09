class PricesController < ApplicationController
  def index
    @prices = Price.where(stock_id: params[:stock_id])
  end
end
