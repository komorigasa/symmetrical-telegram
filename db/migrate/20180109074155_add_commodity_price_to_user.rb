class AddCommodityPriceToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :commodity_prices, :integer
  end
end
