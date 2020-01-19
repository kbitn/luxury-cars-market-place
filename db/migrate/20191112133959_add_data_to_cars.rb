class AddDataToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :car_model, :string
    add_column :cars, :seats, :integer
    add_reference :cars, :reviews, foreign_key: true
    add_column :cars, :location, :string
    add_column :cars, :max_distance_before_charging, :integer
    add_column :cars, :description, :string
    add_column :cars, :owner_conditions, :string
    add_column :cars, :combustion, :string
    add_column :cars, :transmission, :string
    add_column :cars, :accessories, :string
    add_column :cars, :year, :integer
  end
end
