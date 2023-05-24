class RemoveReviewToRestaurant < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :review
  end
end
