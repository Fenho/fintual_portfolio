class Stock < ApplicationRecord
    has_many :portfoliostocks
    has_many :portfolio, through: :portfoliostocks
    has_many :prices, dependent: :destroy
end
