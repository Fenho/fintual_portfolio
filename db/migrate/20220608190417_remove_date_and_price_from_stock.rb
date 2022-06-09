class RemoveDateAndPriceFromStock < ActiveRecord::Migration[7.0]
  def change
    remove_column :stocks, :date, :date
    remove_column :stocks, :price, :float
  end
end
