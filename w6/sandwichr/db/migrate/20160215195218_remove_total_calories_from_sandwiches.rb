class RemoveTotalCaloriesFromSandwiches < ActiveRecord::Migration
  def change
    remove_column :sandwiches, :total_calories, :integer
  end
end
