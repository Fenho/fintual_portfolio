class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end
  
  def show
    @portfolio = Portfolio.find(params[:portfolio_id])
    portfolio_stocks = PortfolioStock.where(portfolio_id: params[:portfolio_id])
    @stocks = []
    portfolio_stocks.each do |portfolio_stock|
      @stocks.append(Stock.find(portfolio_stock.id))
    end
  end
end