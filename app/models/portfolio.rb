class Portfolio < ApplicationRecord
    has_many :portfoliostocks
    has_many :stocks, through: :portfoliostocks
end
