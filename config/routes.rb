Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/stocks", to: "stocks#index"
  # Defines the root path route ("/")
  root "portfolios#index"
  get "/portfolios/:portfolio_id", to: "portfolios#show"
  get "/stocks/:stock_id/prices", to: "prices#index"
end
