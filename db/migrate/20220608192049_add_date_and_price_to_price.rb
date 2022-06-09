class AddDateAndPriceToPrice < ActiveRecord::Migration[7.0]
  def change
    add_column :prices, :date, :date
    add_column :prices, :price, :float
  end
end
