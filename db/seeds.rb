# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Portfolio.destroy_all
Stock.destroy_all
PortfolioStock.destroy_all


3.times do |index_portfolio|
    portfolio = Portfolio.create!(name: "Portfolio #{index_portfolio}")
    10.times do |index_stock|
        stock = Stock.create!(name: Faker::Finance.ticker)
        5.times do |index_price|
            Price.create!(stock_id: stock.id,
                date: Faker::Date.between(from: '2010-01-01', to: Date.today),
                price: Faker::Commerce.price(range: 100..30000)
            )    
        end
        PortfolioStock.create!(portfolio_id: portfolio.id, stock_id: stock.id)
    end
end