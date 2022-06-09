class AddDateAndPriceToStock < ActiveRecord::Migration[7.0]
  def change
    add_column :stocks, :date, :date
    add_column :stocks, :price, :float
  end
end
